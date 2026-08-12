package Paws::Model::Loader::Resolver;

# Loader resolver: given a service name, find the on-disk Smithy
# source file and return a Paws::Model::IR::Service.
#
# share/smithy/ is committed to git and shipped in the dist; the
# Smithy IR covers every non-deprecated AWS service Paws ships today.
#
# Naming: a Paws service class name (e.g. `ApiGateway`, `EventBridge`,
# `DMS`) does not always match the Smithy file basename
# (`api-gateway`, `eventbridge`, `database-migration-service`). The
# %PAWS_TO_SMITHY table below is the authoritative map; lc(class)
# is the fallback for the majority of cases where the names line up.
# A final dash-squash fallback in _find_smithy_path resolves
# newly-vendored multi-word services (LambdaCore -> lambda-core)
# without needing a %PAWS_TO_SMITHY entry, so the daily Smithy
# refresh does not break the build every time AWS adds a service.
#
# Build pipeline: all_known_services() derives the service fleet
# dynamically from the smithy directories + sdkId traits, with
# %PAWS_NAME_OVERRIDES for legacy/non-standard names. New services
# are included automatically when their Smithy IR is vendored.
#
# Dropped services: the 14 services in %PAWS_DROPPED_SERVICES are
# AWS-deprecated and have no Smithy IR upstream. Asking the resolver
# for one of them dies with a pointer at
# docs/deprecated-services.md and the AWS shutdown date.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);
use File::Spec;

use Paws::Model::IR;
use Paws::Model::Loader::Smithy;

use Moo;
use Types::Standard qw(Str ArrayRef);

# Forward-declare so the package-scoped hashes are visible to
# load_service / _paws_to_smithy below; the actual entries are
# populated further down.
our %PAWS_TO_SMITHY;
our %PAWS_DROPPED_SERVICES;

# Resolve the dist's installed share/ directory at runtime so the
# defaults can prefer the vendored, fully-self-contained tree
# (`<install-prefix>/auto/share/dist/Paws/smithy`) over the in-tree
# dev path. File::ShareDir::dist_dir dies for an uninstalled /
# unregistered dist, which is the normal state during in-tree
# development; eval-wrap and fall through. Cached at package scope:
# dist_dir does file system probing and the result never changes for
# the life of the process.
my $SHARE_DIR;
sub _share_dir {
    return $SHARE_DIR if defined $SHARE_DIR;
    require File::ShareDir;
    my $dir = eval { File::ShareDir::dist_dir('Paws') };
    $SHARE_DIR = defined $dir ? $dir : '';
    return $SHARE_DIR;
}

# Where to look for Smithy source files. Each path is checked in turn.
#
# Default order:
#   1. The dist's installed sharedir (populated by [ShareDir] from the
#      committed share/smithy/ tree). This is the path that makes a
#      plain `cpanm Paws` install actually work end-to-end (issue #80).
#   2. The in-tree dev path (CWD-relative). Lets contributors run
#      tests from a checkout without `dzil build` + `cpanm` round-trip.
#
# Both paths are tried for every service before giving up; this
# keeps in-tree dev work going against a freshly-vendored share/
# tree even when an installed Paws happens to be earlier in @INC.
has smithy_search_paths => (
    is      => 'ro',
    isa     => ArrayRef[Str],
    lazy    => 1,
    default => sub {
        my @paths;
        if (my $dir = _share_dir()) {
            push @paths, File::Spec->catdir($dir, 'smithy');
        }
        push @paths, 'share/smithy';
        return \@paths;
    },
);

has _smithy_loader => (
    is      => 'ro',
    lazy    => 1,
    default => sub { Paws::Model::Loader::Smithy->new },
);

# Enumerate the set of SDK class names that have a Smithy source
# file in any of the configured search paths. Returns the names
# sorted.
#
# `Paws::available_services` calls into this so the materialiser
# path has the same enumeration semantics that Module::Find used to
# give the AOT path.
sub available_services {
    my ($self) = @_;

    my %seen;

    my %smithy_to_paws;
    while (my ($paws, $smithy) = each %PAWS_TO_SMITHY) {
        $smithy_to_paws{$smithy} = $paws;
    }

    # Directory names are basenames (`ec2`, `cognito-idp`, `acm-pca`).
    # Translate to Paws class names so the materialiser path produces
    # classes the rest of the code base can address. Basenames that
    # contain a dash and aren't in %PAWS_TO_SMITHY values are skipped
    # because there's no derivation that gives a valid Perl identifier
    # without reading the sdkId trait.
    for my $base (@{ $self->smithy_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        for my $entry (readdir $dh) {
            next if $entry =~ /^\.\.?$/;
            my $path = File::Spec->catfile($base, $entry);
            my $basename;
            if (-f $path && $entry =~ /^([A-Za-z][\w-]*)\.smithy\.json\z/) {
                $basename = $1;
            }
            elsif (-d $path) {
                for my $candidate (
                    File::Spec->catfile($path, "$entry.smithy.json"),
                    File::Spec->catfile($path, lc($entry) . ".smithy.json"),
                ) {
                    if (-r $candidate) {
                        $basename = $entry;
                        last;
                    }
                }
            }
            next if !defined $basename;

            if (my $paws = $smithy_to_paws{$basename}) {
                $seen{$paws} = 1;
            }
            elsif ($basename !~ /-/) {
                $seen{$basename} = 1;
            }
        }
        closedir $dh;
    }

    return sort keys %seen;
}

# Public entry: load the named service via the Smithy loader.
#
# Returns ($ir, $loader_name) in list context; $ir in scalar context.
sub load_service {
    my ($self, $service_name) = @_;

    my $path = $self->_find_smithy_path($service_name);
    if (defined $path) {
        my $ir = $self->_smithy_loader->load($path);
        return wantarray ? ($ir, 'Smithy') : $ir;
    }

    if (my $reason = $PAWS_DROPPED_SERVICES{$service_name}) {
        croak "resolver: service '$service_name' is no longer ship-able: "
            . "$reason. See docs/deprecated-services.md for the migration path.";
    }

    croak "resolver: no Smithy source file found for service=$service_name";
}

sub _find_smithy_path {
    my ($self, $service_name) = @_;

    my $smithy_basename = _paws_to_smithy($service_name);
    for my $base (@{ $self->smithy_search_paths }) {
        for my $candidate (
            # Flat layout (tolerant of older trees / fixtures):
            File::Spec->catfile($base, "$smithy_basename.smithy.json"),
            File::Spec->catfile($base, lc($service_name) . ".smithy.json"),
            File::Spec->catfile($base, "$service_name.smithy.json"),
            # Nested layout (canonical for the vendored tree):
            File::Spec->catfile($base, $smithy_basename, "$smithy_basename.smithy.json"),
            File::Spec->catfile($base, lc($service_name), lc($service_name) . ".smithy.json"),
            File::Spec->catfile($base, $service_name, "$service_name.smithy.json"),
        ) {
            return $candidate if -r $candidate;
        }
    }

    # Fallback for newly-vendored multi-word services that have no
    # %PAWS_TO_SMITHY entry yet. all_known_services() derives the Paws
    # class name from the sdkId trait by removing its spaces
    # ("Lambda Core" -> "LambdaCore"); the Smithy directory basename is
    # the same sdkId with spaces turned into dashes and lowercased
    # ("Lambda Core" -> "lambda-core"). So for any sdkId-derived name,
    # lc($service_name) equals the directory basename with its dashes
    # removed. Match on that invariant so the daily Smithy refresh does
    # not need a hand-maintained table entry for every new dashed
    # service (LambdaCore <-> lambda-core,
    # PartnerCentralRevenueMeasurement <-> partnercentral-revenue-measurement).
    #
    # Only runs after all explicit/lc candidates miss, so it can never
    # override a %PAWS_TO_SMITHY mapping (e.g. the substantive renames
    # such as DMS -> database-migration-service resolve above and never
    # reach here).
    my $target = lc $service_name;
    for my $base (@{ $self->smithy_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        my @entries = sort readdir $dh;
        closedir $dh;
        for my $entry (@entries) {
            next if $entry =~ /^\./;
            next if index($entry, '-') < 0;
            (my $squashed = $entry) =~ s/-//g;
            next if lc($squashed) ne $target;
            my $candidate =
                File::Spec->catfile($base, $entry, "$entry.smithy.json");
            return $candidate if -r $candidate;
        }
    }

    return undef;
}

# Map a Paws service class suffix (`ApiGateway`, `DMS`) to the Smithy
# file basename used under share/smithy/<basename>/<basename>.smithy.json.
#
# The %PAWS_TO_SMITHY hash holds the explicit cases:
#   - 144 entries where the Smithy basename is the dash-separated
#     lowercase form of the sdkId (e.g. ApiGateway -> api-gateway,
#     CloudHSMv2 -> cloudhsm-v2). These are mechanical but not
#     derivable from `lc($class)` alone — ACMPCA's smithy basename
#     is `acm-pca`, not `acmpca`.
#   - 27 entries where the legacy Paws class name doesn't match the
#     Smithy basename (Config -> config-service,
#     DMS -> database-migration-service, StepFunctions -> sfn,
#     ELB -> elastic-load-balancing, ...).
#   - The CloudWatchEvents / Events ambiguity: Smithy ships both
#     `cloudwatch-events` and `eventbridge` for the same `events`
#     endpoint. EventBridge is the canonical modern name and has
#     the more complete model, so Paws::EventBridge resolves to
#     `eventbridge`. The legacy Paws::CloudWatchEvents continues to
#     work against `cloudwatch-events` so existing user code does
#     not break.
#
# A Paws class not in the table falls through to lc($class), which
# covers the majority of cases where the names already line up
# (e.g. IAM -> iam, S3 -> s3, DynamoDB -> dynamodb).
%PAWS_TO_SMITHY = (
    # --- Cosmetic separator differences (auto-derived from sdkId) ---
    ACMPCA                              => 'acm-pca',
    ARCRegionSwitch                     => 'arc-region-switch',
    ARCZonalShift                       => 'arc-zonal-shift',
    ApiGateway                          => 'api-gateway',
    AppMesh                             => 'app-mesh',
    ApplicationAutoScaling              => 'application-auto-scaling',
    ApplicationInsights                 => 'application-insights',
    ApplicationSignals                  => 'application-signals',
    AutoScaling                         => 'auto-scaling',
    AutoScalingPlans                    => 'auto-scaling-plans',
    BCMDashboards                       => 'bcm-dashboards',
    BCMDataExports                      => 'bcm-data-exports',
    BCMPricingCalculator                => 'bcm-pricing-calculator',
    BCMRecommendedActions               => 'bcm-recommended-actions',
    BackupGateway                       => 'backup-gateway',
    BedrockAgent                        => 'bedrock-agent',
    BedrockAgentCore                    => 'bedrock-agentcore',
    BedrockAgentCoreControl             => 'bedrock-agentcore-control',
    BedrockAgentRuntime                 => 'bedrock-agent-runtime',
    BedrockDataAutomation               => 'bedrock-data-automation',
    BedrockDataAutomationRuntime        => 'bedrock-data-automation-runtime',
    BedrockRuntime                      => 'bedrock-runtime',
    ChimeSDKIdentity                    => 'chime-sdk-identity',
    ChimeSDKMediaPipelines              => 'chime-sdk-media-pipelines',
    ChimeSDKMeetings                    => 'chime-sdk-meetings',
    ChimeSDKMessaging                   => 'chime-sdk-messaging',
    ChimeSDKVoice                       => 'chime-sdk-voice',
    CloudFrontKeyValueStore             => 'cloudfront-keyvaluestore',
    CloudHSMv2                          => 'cloudhsm-v2',
    CloudSearchDomain                   => 'cloudsearch-domain',
    CloudTrailData                      => 'cloudtrail-data',
    CloudWatchEvents                    => 'cloudwatch-events',
    CloudWatchLogs                      => 'cloudwatch-logs',
    CodeGuruReviewer                    => 'codeguru-reviewer',
    CodeGuruSecurity                    => 'codeguru-security',
    CodeStarConnections                 => 'codestar-connections',
    CodeStarNotifications               => 'codestar-notifications',
    CognitoIdentity                     => 'cognito-identity',
    CognitoSync                         => 'cognito-sync',
    ComputeOptimizer                    => 'compute-optimizer',
    ComputeOptimizerAutomation          => 'compute-optimizer-automation',
    ConnectContactLens                  => 'connect-contact-lens',
    CostExplorer                        => 'cost-explorer',
    CostOptimizationHub                 => 'cost-optimization-hub',
    CustomerProfiles                    => 'customer-profiles',
    DataPipeline                        => 'data-pipeline',
    DevOpsAgent                         => 'devops-agent',
    DevOpsGuru                          => 'devops-guru',
    DeviceFarm                          => 'device-farm',
    DirectConnect                       => 'direct-connect',
    DirectoryServiceData                => 'directory-service-data',
    DocDBElastic                        => 'docdb-elastic',
    DynamoDBStreams                     => 'dynamodb-streams',
    EC2InstanceConnect                  => 'ec2-instance-connect',
    ECRPublic                           => 'ecr-public',
    EKSAuth                             => 'eks-auth',
    EMRContainers                       => 'emr-containers',
    EMRServerless                       => 'emr-serverless',
    ElasticBeanstalk                    => 'elastic-beanstalk',
    ElasticTranscoder                   => 'elastic-transcoder',
    FinspaceData                        => 'finspace-data',
    GeoMaps                             => 'geo-maps',
    GeoPlaces                           => 'geo-places',
    GeoRoutes                           => 'geo-routes',
    GlobalAccelerator                   => 'global-accelerator',
    IVSRealTime                         => 'ivs-realtime',
    InspectorScan                       => 'inspector-scan',
    IoTEvents                           => 'iot-events',
    IoTEventsData                       => 'iot-events-data',
    IoTManagedIntegrations              => 'iot-managed-integrations',
    IoTWireless                         => 'iot-wireless',
    KendraRanking                       => 'kendra-ranking',
    KinesisAnalytics                    => 'kinesis-analytics',
    KinesisAnalyticsV2                  => 'kinesis-analytics-v2',
    KinesisVideo                        => 'kinesis-video',
    KinesisVideoArchivedMedia           => 'kinesis-video-archived-media',
    KinesisVideoMedia                   => 'kinesis-video-media',
    KinesisVideoSignaling               => 'kinesis-video-signaling',
    KinesisVideoWebRTCStorage           => 'kinesis-video-webrtc-storage',
    LaunchWizard                        => 'launch-wizard',
    LexModelsV2                         => 'lex-models-v2',
    LexRuntimeV2                        => 'lex-runtime-v2',
    LicenseManager                      => 'license-manager',
    LicenseManagerLinuxSubscriptions    => 'license-manager-linux-subscriptions',
    LicenseManagerUserSubscriptions     => 'license-manager-user-subscriptions',
    MWAAServerless                      => 'mwaa-serverless',
    MachineLearning                     => 'machine-learning',
    ManagedBlockchainQuery              => 'managedblockchain-query',
    MarketplaceAgreement                => 'marketplace-agreement',
    MarketplaceCatalog                  => 'marketplace-catalog',
    MarketplaceCommerceAnalytics        => 'marketplace-commerce-analytics',
    MarketplaceDeployment               => 'marketplace-deployment',
    MarketplaceDiscovery                => 'marketplace-discovery',
    MarketplaceMetering                 => 'marketplace-metering',
    MarketplaceReporting                => 'marketplace-reporting',
    MediaPackageVod                     => 'mediapackage-vod',
    MediaStoreData                      => 'mediastore-data',
    MedicalImaging                      => 'medical-imaging',
    MigrationHub                        => 'migration-hub',
    MigrationHubConfig                  => 'migrationhub-config',
    MigrationHubRefactorSpaces          => 'migration-hub-refactor-spaces',
    NeptuneGraph                        => 'neptune-graph',
    NetworkFirewall                     => 'network-firewall',
    NovaAct                             => 'nova-act',
    PartnerCentralAccount               => 'partnercentral-account',
    PartnerCentralBenefits              => 'partnercentral-benefits',
    PartnerCentralChannel               => 'partnercentral-channel',
    PartnerCentralSelling               => 'partnercentral-selling',
    PaymentCryptography                 => 'payment-cryptography',
    PaymentCryptographyData             => 'payment-cryptography-data',
    PcaConnectorAd                      => 'pca-connector-ad',
    PcaConnectorScep                    => 'pca-connector-scep',
    PersonalizeEvents                   => 'personalize-events',
    PersonalizeRuntime                  => 'personalize-runtime',
    PinpointEmail                       => 'pinpoint-email',
    PinpointSMSVoice                    => 'pinpoint-sms-voice',
    PinpointSMSVoiceV2                  => 'pinpoint-sms-voice-v2',
    RDSData                             => 'rds-data',
    RedshiftData                        => 'redshift-data',
    RedshiftServerless                  => 'redshift-serverless',
    ResourceExplorer2                   => 'resource-explorer-2',
    ResourceGroups                      => 'resource-groups',
    Route53                             => 'route-53',
    Route53Domains                      => 'route-53-domains',
    Route53RecoveryCluster              => 'route53-recovery-cluster',
    Route53RecoveryControlConfig        => 'route53-recovery-control-config',
    Route53RecoveryReadiness            => 'route53-recovery-readiness',
    S3Control                           => 's3-control',
    SSMContacts                         => 'ssm-contacts',
    SSMGuiConnect                       => 'ssm-guiconnect',
    SSMIncidents                        => 'ssm-incidents',
    SSMQuickSetup                       => 'ssm-quicksetup',
    SSOAdmin                            => 'sso-admin',
    SSOOidc                             => 'sso-oidc',
    SageMakerA2IRuntime                 => 'sagemaker-a2i-runtime',
    SageMakerEdge                       => 'sagemaker-edge',
    SageMakerFeatureStoreRuntime        => 'sagemaker-featurestore-runtime',
    SageMakerGeospatial                 => 'sagemaker-geospatial',
    SageMakerMetrics                    => 'sagemaker-metrics',
    SageMakerRuntime                    => 'sagemaker-runtime',
    SageMakerRuntimeHTTP2               => 'sagemaker-runtime-http2',
    SecretsManager                      => 'secrets-manager',
    SecurityIR                          => 'security-ir',
    ServiceCatalog                      => 'service-catalog',
    ServiceCatalogAppRegistry           => 'service-catalog-appregistry',
    ServiceQuotas                       => 'service-quotas',
    SignerData                           => 'signer-data',
    SnowDeviceManagement                => 'snow-device-management',
    SsmSap                              => 'ssm-sap',
    StorageGateway                      => 'storage-gateway',
    SupportApp                          => 'support-app',
    TimestreamInfluxDB                  => 'timestream-influxdb',
    TimestreamQuery                     => 'timestream-query',
    TimestreamWrite                     => 'timestream-write',
    TranscribeStreaming                 => 'transcribe-streaming',
    VPCLattice                          => 'vpc-lattice',
    VoiceID                             => 'voice-id',
    WAFRegional                         => 'waf-regional',
    WorkSpacesThinClient                => 'workspaces-thin-client',
    WorkSpacesWeb                       => 'workspaces-web',
    WorkspacesInstances                 => 'workspaces-instances',

    # --- Substantive renames (legacy Paws name -> Smithy basename) ---
    ApiGatewayManagement                => 'apigatewaymanagementapi',
    ApplicationMigration                => 'mgn',
    CUR                                 => 'cost-and-usage-report-service',
    CognitoIdp                          => 'cognito-identity-provider',
    Config                              => 'config-service',
    DMS                                 => 'database-migration-service',
    DS                                  => 'directory-service',
    Discovery                           => 'application-discovery-service',
    ELB                                 => 'elastic-load-balancing',
    ELBv2                               => 'elastic-load-balancing-v2',
    ES                                  => 'elasticsearch-service',
    GlueDataBrew                        => 'databrew',
    IoTData                             => 'iot-data-plane',
    IoTJobsData                         => 'iot-jobs-data-plane',
    LexModels                           => 'lex-model-building-service',
    LexRuntime                          => 'lex-runtime-service',
    LocationService                     => 'location',
    MarketplaceEntitlement              => 'marketplace-entitlement-service',
    PerformanceInsights                 => 'pi',
    Prometheus                          => 'amp',
    ResourceTagging                     => 'resource-groups-tagging-api',
    SDB                                 => 'simpledbv2',
    SSOIdentityStore                    => 'identitystore',
    ServerlessRepo                      => 'serverlessapplicationrepository',
    SimpleWorkflow                      => 'swf',
    StepFunctions                       => 'sfn',

    # --- The events / EventBridge ambiguity ---
    # Smithy ships TWO service models for the `events` endpoint:
    # `eventbridge` (modern, more complete) and `cloudwatch-events`
    # (legacy alias). Map the canonical Paws::EventBridge to the
    # modern model and leave the existing Paws::CloudWatchEvents
    # pointing at the legacy file (covered above) so user code that
    # still uses `Paws->service('CloudWatchEvents')` keeps working.
    EventBridge                         => 'eventbridge',
);

# Services AWS has deprecated, end-of-lifed, or scheduled for shutdown.
# Smithy upstream (awslabs/aws-sdk-rust:aws-models/) no longer ships a
# model for any of these — see docs/deprecated-services.md for the
# AWS shutdown timeline + migration paths.
#
# The resolver checks this hash when it cannot find a Smithy file
# for a service, so users get a pointed error rather than the
# generic "no source file found" message.
%PAWS_DROPPED_SERVICES = (
    AppTest         => 'AWS Mainframe Modernization Application Testing was discontinued by AWS in late 2024',
    Evidently       => 'CloudWatch Evidently shutdown 2025-10-16',
    ImportExport    => 'Legacy disk-shipping API (SigV2), retired by AWS years ago',
    IoTAnalytics    => 'IoT Analytics shutdown announced for 2025-12-15',
    IoTFleetHub     => 'IoT FleetHub deprecated alongside the rest of the AWS IoT 1-Click family',
    LookoutMetrics  => 'Lookout for Metrics shutdown 2025-10-17',
    LookoutVision   => 'Lookout for Vision shutdown 2025-10-31',
    OpsWorks        => 'OpsWorks Stacks shutdown 2024-05-26',
    OpsWorksCM      => 'OpsWorks for Chef/Puppet shutdown 2024-05-26',
    PrivateNetworks => 'AWS Private 5G shutdown 2024',
    QLDB            => 'QLDB shutdown 2025-07-31',
    QLDBSession     => 'QLDB runtime — same EoL as QLDB',
    RoboMaker       => 'RoboMaker shutdown 2025-09-10',
    SMS             => 'Server Migration Service end-of-support 2023-03-31, replaced by MGN (Paws::ApplicationMigration)',
);

sub _paws_to_smithy {
    my ($service_name) = @_;
    return $PAWS_TO_SMITHY{$service_name} if exists $PAWS_TO_SMITHY{$service_name};
    return lc $service_name;
}

# Overrides for the build pipeline: smithy directory basename → Paws
# class name, for services where removing spaces from the sdkId trait
# does NOT produce the desired class name.
#
# Covers two categories:
#   1. Legacy Paws names that predate Smithy (CUR, DMS, ELB, etc.)
#   2. Services whose sdkId has non-standard capitalization
#      (e.g. sdkId "ECRPUBLIC" → we want "ECRPublic")
#
# New services from AWS almost always have a well-formed sdkId
# (e.g. "Clean Rooms" → "CleanRooms") so this hash rarely needs
# updating. Only add an entry when sdkId (spaces removed, ucfirst
# if all-lowercase) does not match the Paws class name you want.
our %PAWS_NAME_OVERRIDES = (
    'amp'                                => 'Prometheus',
    'api-gateway'                        => 'ApiGateway',
    'apigatewaymanagementapi'            => 'ApiGatewayManagement',
    'application-discovery-service'      => 'Discovery',
    'arc-region-switch'                  => 'ARCRegionSwitch',
    'b2bi'                               => 'B2BI',
    'cloudhsm-v2'                        => 'CloudHSMv2',
    'codestar-connections'               => 'CodeStarConnections',
    'codestar-notifications'             => 'CodeStarNotifications',
    'cognito-identity-provider'          => 'CognitoIdp',
    'config-service'                     => 'Config',
    'cost-and-usage-report-service'      => 'CUR',
    'database-migration-service'         => 'DMS',
    'databrew'                           => 'GlueDataBrew',
    'directory-service'                  => 'DS',
    'ecr-public'                         => 'ECRPublic',
    'elastic-load-balancing'             => 'ELB',
    'elastic-load-balancing-v2'          => 'ELBv2',
    'elasticsearch-service'              => 'ES',
    'emr-containers'                     => 'EMRContainers',
    'evs'                                => 'EVS',
    'finspace-data'                      => 'FinspaceData',
    'identitystore'                      => 'IdentityStore',
    'iot-data-plane'                     => 'IoTData',
    'iot-jobs-data-plane'                => 'IoTJobsData',
    'ivschat'                            => 'IVSChat',
    'lex-model-building-service'         => 'LexModels',
    'lex-runtime-service'                => 'LexRuntime',
    'marketplace-entitlement-service'    => 'MarketplaceEntitlement',
    'mgn'                                => 'ApplicationMigration',
    'neptunedata'                        => 'NeptuneData',
    'odb'                                => 'ODB',
    'pi'                                 => 'PerformanceInsights',
    'repostspace'                        => 'RepostSpace',
    'resource-groups-tagging-api'        => 'ResourceTagging',
    'sagemaker-edge'                     => 'SageMakerEdge',
    'serverlessapplicationrepository'    => 'ServerlessRepo',
    'sfn'                                => 'StepFunctions',
    'simpledbv2'                         => 'SDB',
    'sso-oidc'                           => 'SSOOidc',
    'swf'                                => 'SimpleWorkflow',
    'uxc'                                => 'UXC',
);

# A4-B build-pipeline entry. Enumerates every Smithy IR directory,
# derives the canonical Paws class name from each service's sdkId
# trait (with overrides from %PAWS_NAME_OVERRIDES), and returns the
# sorted list. New services added upstream are automatically included
# when their Smithy IR is vendored — no manual list maintenance.
#
# Services whose only protocol trait is one the Smithy loader cannot
# materialise (e.g. smithy.protocols#rpcv2Cbor) are skipped: they
# cannot be constructed or built into a modular dist, so advertising
# them would only break the build. This keeps the daily Smithy refresh
# green when AWS ships a service on an unsupported protocol. The check
# is driven by Paws::Model::Loader::Smithy->supported_protocol_traits
# so the loader stays the single source of truth. NB: the inline
# replica of this logic in .github/workflows/refresh-source-deps.yml
# (expected-service-count baseline) must apply the same filter.
#
# Requires JSON::PP (core since Perl 5.14) to parse sdkId from
# service models not covered by %PAWS_NAME_OVERRIDES.
sub all_known_services {
    my ($self) = @_;
    require JSON::PP;

    my @out;
    for my $base (@{ $self->smithy_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        for my $entry (readdir $dh) {
            next if $entry =~ /^\./;
            my $dir = File::Spec->catdir($base, $entry);
            next if !-d $dir;
            my $ir_file = File::Spec->catfile($dir, "$entry.smithy.json");
            next if !-r $ir_file;

            my $json = _decode_smithy_json($ir_file);
            next if !$json;

            my $svc_shape = _service_shape($json);
            next if !$svc_shape;

            next if !_has_supported_protocol($svc_shape);

            my $paws_name;
            if (exists $PAWS_NAME_OVERRIDES{$entry}) {
                $paws_name = $PAWS_NAME_OVERRIDES{$entry};
            } else {
                $paws_name = _sdkid_to_paws_name($svc_shape);
                next if !defined $paws_name;
            }

            next if exists $PAWS_DROPPED_SERVICES{$paws_name};
            push @out, $paws_name;
        }
        closedir $dh;
    }
    return sort @out;
}

sub _decode_smithy_json {
    my ($ir_file) = @_;
    open my $fh, '<', $ir_file or return undef;
    local $/;
    my $json = eval { JSON::PP::decode_json(<$fh>) };
    close $fh;
    return $json;
}

sub _service_shape {
    my ($json) = @_;
    for my $key (keys %{ $json->{shapes} || {} }) {
        my $shape = $json->{shapes}{$key};
        return $shape if ($shape->{type} || '') eq 'service';
    }
    return undef;
}

sub _has_supported_protocol {
    my ($svc_shape) = @_;
    my $traits = $svc_shape->{traits} || {};
    for my $tid (Paws::Model::Loader::Smithy->supported_protocol_traits) {
        return 1 if exists $traits->{$tid};
    }
    return 0;
}

sub _sdkid_to_paws_name {
    my ($svc_shape) = @_;
    my $traits = $svc_shape->{traits} || {};
    my $svc_trait = $traits->{'aws.api#service'};
    return undef if !$svc_trait || ref($svc_trait) ne 'HASH';
    my $sdk_id = $svc_trait->{sdkId};
    return undef if !defined $sdk_id || $sdk_id eq '';

    my $name = $sdk_id;
    $name =~ s/\s+//g;
    $name = ucfirst($name) if $name =~ /^[a-z]/;
    return $name;
}

1;

__END__

=head1 NAME

Paws::Model::Loader::Resolver - find and load a service via Smithy IR

=head1 SYNOPSIS

  use Paws::Model::Loader::Resolver;

  my $resolver = Paws::Model::Loader::Resolver->new;
  my ($ir, $loader_name) = $resolver->load_service('IAM');
  say "loaded via $loader_name";

=head1 NAMING

Paws service class names do not always match the Smithy file basename.
The C<%Paws::Model::Loader::Resolver::PAWS_TO_SMITHY> hash holds the
explicit map; lc(class) is the fallback.

The C<%Paws::Model::Loader::Resolver::PAWS_DROPPED_SERVICES> hash
documents the 14 AWS-retired services that are no longer ship-able.
Asking for one of them dies with a pointer at
C<docs/deprecated-services.md>.

=cut
