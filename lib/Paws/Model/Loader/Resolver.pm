package Paws::Model::Loader::Resolver;

# Loader resolver: given a service name, find the on-disk source
# files and return a Paws::Model::IR::Service via the appropriate
# loader.
#
# Default: Smithy-only. share/smithy/ is committed to git and shipped
# in the dist; the Smithy IR covers every non-deprecated AWS service
# Paws ships today plus 33 services botocore does not have a model
# for. Override via
#   PAWS_LOADER_ORDER=Botocore,Smithy
# (and supply botocore_search_paths) for users who need to point at a
# botocore checkout for a deprecated-but-still-needed service.
#
# Naming: a Paws service class name (e.g. `ApiGateway`, `EventBridge`,
# `DMS`) does not always match the Smithy file basename
# (`api-gateway`, `eventbridge`, `database-migration-service`). The
# %PAWS_TO_SMITHY table below is the authoritative map; lc(class)
# is the fallback for the ~217 cases where the names already line
# up.
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
use Paws::Model::Loader::Botocore;
use Paws::Model::Loader::Smithy;

use Moose;

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

# Where to look for source files. Each path is checked in turn.
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
    isa     => 'ArrayRef[Str]',
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

# Defaults to the empty list — botocore is no longer the canonical
# source. The Botocore loader (Paws::Model::Loader::Botocore) stays
# wired in for users who construct a resolver explicitly with
# botocore_search_paths and PAWS_LOADER_ORDER=Botocore,Smithy
# pointing at a botocore checkout.
has botocore_search_paths => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub { [] },
);

# Order in which loaders are tried. The first one that finds a source
# file wins. Defaults from PAWS_LOADER_ORDER if set, else
# 'Smithy' (botocore is opt-in via the env var).
has order => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub {
        my $env = $ENV{PAWS_LOADER_ORDER};
        if (defined $env && length $env) {
            return [ split /,/, $env ];
        }
        return [ 'Smithy' ];
    },
);

# Loader instance per name.
has _loaders => (
    is      => 'ro',
    isa     => 'HashRef',
    lazy    => 1,
    default => sub {
        return {
            Smithy   => Paws::Model::Loader::Smithy->new,
            Botocore => Paws::Model::Loader::Botocore->new,
        };
    },
);

# Enumerate the set of SDK class names that have a source file in
# any of the configured search paths. Returns the names sorted, with
# duplicates collapsed (a service that exists in both Smithy and
# Botocore appears once). Lightweight: walks directory entries and
# only opens a file when the SDK name is not derivable from the
# filename / directory name (botocore: `metadata.serviceId` is the
# canonical SDK name; we cache it after the first read).
#
# `Paws::available_services` calls into this so the materialiser
# path has the same enumeration semantics that Module::Find used to
# give the AOT path.
sub available_services {
    my ($self) = @_;

    my %seen;

    # Inverse %PAWS_TO_SMITHY: smithy basename -> Paws class name.
    # Built once per call (cheap; 171 entries). Used to translate
    # the basenames we find in share/smithy/ back to the Paws class
    # names callers actually use (`Paws::ApiGateway` not
    # `Paws::api-gateway`, etc.).
    my %smithy_to_paws;
    while (my ($paws, $smithy) = each %PAWS_TO_SMITHY) {
        $smithy_to_paws{$smithy} = $paws;
    }

    # Smithy: directory names are basenames (botocore-style: `ec2`,
    # `cognito-idp`, `acm-pca`). Translate to Paws class names so
    # the materialiser path produces classes the rest of the code
    # base can address. Basenames whose lc() form already matches
    # the Paws class name (~254 services) round-trip through
    # ucfirst + the IR-name override in Paws::_materialise_class /
    # Paws::Model::Materializer::Auto::_materialise; basenames that
    # contain a dash and aren't in %PAWS_TO_SMITHY values (~17 new-
    # GA services Smithy added that the AOT path never had a name
    # for: bedrock-agentcore, mwaa-serverless,
    # etc.) are skipped because there's no derivation that gives a
    # valid Perl identifier without reading the sdkId trait. Adding
    # explicit %PAWS_TO_SMITHY entries for those is a follow-up.
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
                # nested: <base>/<svc>/<svc>.smithy.json
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
                # All-lowercase basenames map to Paws::<basename>
                # via the lc() fallback in _smithy_path_for; the IR
                # mutation in the materialiser entry points keeps
                # the materialised class name aligned.
                $seen{$basename} = 1;
            }
            # else: dash-containing basename with no explicit
            # mapping. Skipped (see comment above).
        }
        closedir $dh;
    }

    # Botocore: directory names are endpoint prefixes (e.g. `iam`,
    # `cognito-idp`). The SDK class name is the `serviceId` field
    # in metadata of service-2.json. We have to open each one to
    # find out -- but only once per process; the result is cached
    # on the resolver instance.
    for my $base (@{ $self->botocore_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        for my $svc_dir (readdir $dh) {
            next if $svc_dir =~ /^\.\.?$/;
            next if $svc_dir =~ /^_/;
            my $svc_path = File::Spec->catdir($base, $svc_dir);
            next if !-d $svc_path;

            my $sdk = $self->_botocore_sdk_name($svc_path);
            $seen{$sdk} = 1 if defined $sdk;
        }
        closedir $dh;
    }

    return sort keys %seen;
}

has _botocore_sdk_name_cache => (
    is      => 'ro',
    isa     => 'HashRef[Str]',
    lazy    => 1,
    default => sub { {} },
);

# SDK class name -> path-to-service-2.json. Populated as a side-
# effect of available_services so subsequent load_service calls
# don't have to re-scan to map an SDK class name back to its
# botocore directory (which is keyed by endpointPrefix, not by
# serviceId — `ACMPCA` is `acm-pca/`, `CognitoIdentityProvider` is
# `cognito-idp/`, etc.).
has _botocore_sdk_to_path => (
    is      => 'ro',
    isa     => 'HashRef[Str]',
    lazy    => 1,
    default => sub { {} },
);

sub _botocore_sdk_name {
    my ($self, $svc_path) = @_;

    my $cache = $self->_botocore_sdk_name_cache;
    return $cache->{$svc_path} if exists $cache->{$svc_path};

    opendir(my $dh, $svc_path) or return undef;
    my @dates = sort grep {
        /^\d{4}-\d{2}-\d{2}\z/
        && -r File::Spec->catfile($svc_path, $_, 'service-2.json')
    } readdir $dh;
    closedir $dh;
    return undef if !@dates;

    my $service_2 = File::Spec->catfile($svc_path, $dates[-1], 'service-2.json');
    open(my $fh, '<', $service_2) or return undef;
    local $/;
    my $json = <$fh>;
    close $fh;

    require JSON::PP;
    my $struct = eval { JSON::PP->new->utf8(1)->decode($json) };
    return undef if !$struct;
    my $sid = $struct->{metadata}->{serviceId};
    return undef if !defined $sid;

    # Same fix-ups Paws::API::Builder::Paws applies (see
    # boto_file_information): capitalise first letter, drop
    # whitespace, so e.g. `cloud watch` becomes `CloudWatch`.
    substr($sid, 0, 1) = uc(substr($sid, 0, 1));
    $sid =~ s/\s+//g;

    $cache->{$svc_path}            = $sid;
    $self->_botocore_sdk_to_path->{$sid} = $service_2;
    return $sid;
}

# Public entry: load the named service via the first loader in the
# resolution order that can find a source file for it.
#
# Returns ($ir, $loader_name) in list context; $ir in scalar context.
sub load_service {
    my ($self, $service_name) = @_;

    for my $loader_name (@{ $self->order }) {
        my $path = $self->_find_path_for($loader_name, $service_name);
        next if !defined $path;
        my $loader = $self->_loaders->{$loader_name}
            // croak "resolver: no loader instance for $loader_name";
        my $ir = $loader->load($path);

        # The Smithy sdkId (and, to a lesser extent, the botocore
        # serviceId) don't always match the Paws class naming
        # convention. E.g. sdkId "Keyspaces" -> Paws class "KeySpaces",
        # sdkId "API Gateway" -> Paws class "ApiGateway". Stamp the
        # canonical Paws class name that the caller asked for so the
        # materialiser produces correctly-named packages.
        if ($ir->name ne $service_name) {
            $ir->{name} = $service_name;
        }

        return wantarray ? ($ir, $loader_name) : $ir;
    }

    # Differentiate "we know this service is gone" from "we don't
    # know what you're asking for". The former gets a pointed error
    # with the AWS shutdown date and a doc pointer; the latter the
    # generic "no source file" message.
    if (my $reason = $PAWS_DROPPED_SERVICES{$service_name}) {
        croak "resolver: service '$service_name' is no longer ship-able: "
            . "$reason. See docs/deprecated-services.md for the migration path.";
    }

    croak "resolver: no source file found for service=$service_name in any of "
        . join(',', @{ $self->order });
}

# For each loader name, look in the configured search paths for a
# matching source file.
sub _find_path_for {
    my ($self, $loader_name, $service_name) = @_;

    if ($loader_name eq 'Smithy') {
        my $smithy_basename = _paws_to_smithy($service_name);
        for my $base (@{ $self->smithy_search_paths }) {
            for my $candidate (
                # Flat layout (tolerant of older trees / fixtures):
                # share/smithy/<basename>.smithy.json
                File::Spec->catfile($base, "$smithy_basename.smithy.json"),
                File::Spec->catfile($base, lc($service_name) . ".smithy.json"),
                File::Spec->catfile($base, "$service_name.smithy.json"),
                # Nested layout (canonical for the vendored tree):
                # share/smithy/<basename>/<basename>.smithy.json
                File::Spec->catfile($base, $smithy_basename, "$smithy_basename.smithy.json"),
                File::Spec->catfile($base, lc($service_name), lc($service_name) . ".smithy.json"),
                File::Spec->catfile($base, $service_name, "$service_name.smithy.json"),
            ) {
                return $candidate if -r $candidate;
            }
        }
        return undef;
    }

    if ($loader_name eq 'Botocore') {
        # Heuristic first: try the SDK name as-is and lowercased
        # against each search base. Catches the common case
        # (`ec2` -> `EC2`, `iam` -> `IAM`, `sqs` -> `SQS`) without
        # paying the per-process cost of enumerating every
        # service's serviceId. The "as-is" pass also matches any
        # vendored botocore mirror that uses the SDK class name as
        # the directory.
        for my $base (@{ $self->botocore_search_paths }) {
            for my $candidate_dir (
                File::Spec->catdir($base, $service_name),
                File::Spec->catdir($base, lc $service_name),
            ) {
                next if !-d $candidate_dir;
                opendir(my $dh, $candidate_dir) or next;
                my @dates = sort grep {
                    /^\d{4}-\d{2}-\d{2}$/
                    && -f File::Spec->catfile($candidate_dir, $_, 'service-2.json')
                } readdir $dh;
                closedir $dh;
                next if !@dates;
                return File::Spec->catfile($candidate_dir, $dates[-1], 'service-2.json');
            }
        }

        # Heuristic miss: fall back to the canonical SDK class name
        # -> directory mapping derived from each service-2.json's
        # `serviceId` field. Many services have non-mechanical
        # mappings (ACMPCA -> acm-pca, CognitoIdentityProvider ->
        # cognito-idp, ElasticLoadBalancingv2 -> elasticloadbalancingv2,
        # ...). Build the mapping lazily by triggering
        # available_services, which side-effect-populates
        # _botocore_sdk_to_path. The cost is amortised across all
        # subsequent load_service calls on this resolver instance.
        if (!keys %{ $self->_botocore_sdk_to_path }) {
            $self->available_services;
        }
        if (my $cached = $self->_botocore_sdk_to_path->{$service_name}) {
            return $cached if -r $cached;
        }
        return undef;
    }

    croak "resolver: unknown loader name '$loader_name'";
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
#   - 27 entries where AWS renamed the service between the botocore
#     era and the Smithy era (Config -> config-service,
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
# covers the ~217 cases where the names already line up
# (e.g. IAM -> iam, S3 -> s3, DynamoDB -> dynamodb).
%PAWS_TO_SMITHY = (
    # --- Cosmetic separator differences (auto-derived from sdkId) ---
    ACMPCA                              => 'acm-pca',
    ARCZonalShift                       => 'arc-zonal-shift',
    ApiGateway                          => 'api-gateway',
    AppMesh                             => 'app-mesh',
    ApplicationAutoScaling              => 'application-auto-scaling',
    ApplicationInsights                 => 'application-insights',
    ApplicationSignals                  => 'application-signals',
    AutoScaling                         => 'auto-scaling',
    AutoScalingPlans                    => 'auto-scaling-plans',
    BCMDataExports                      => 'bcm-data-exports',
    BCMPricingCalculator                => 'bcm-pricing-calculator',
    BackupGateway                       => 'backup-gateway',
    BedrockAgent                        => 'bedrock-agent',
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
    ConnectContactLens                  => 'connect-contact-lens',
    CostExplorer                        => 'cost-explorer',
    CostOptimizationHub                 => 'cost-optimization-hub',
    CustomerProfiles                    => 'customer-profiles',
    DataPipeline                        => 'data-pipeline',
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
    MachineLearning                     => 'machine-learning',
    ManagedBlockchainQuery              => 'managedblockchain-query',
    MarketplaceAgreement                => 'marketplace-agreement',
    MarketplaceCatalog                  => 'marketplace-catalog',
    MarketplaceCommerceAnalytics        => 'marketplace-commerce-analytics',
    MarketplaceDeployment               => 'marketplace-deployment',
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
    SecretsManager                      => 'secrets-manager',
    SecurityIR                          => 'security-ir',
    ServiceCatalog                      => 'service-catalog',
    ServiceCatalogAppRegistry           => 'service-catalog-appregistry',
    ServiceQuotas                       => 'service-quotas',
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

    # --- Substantive renames (botocore-era name -> Smithy basename) ---
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

# Authoritative list of Paws service class names. Each entry must
# resolve to a Smithy IR file via %PAWS_TO_SMITHY or the lc($name)
# fallback. The canonical capitalisation comes from the Smithy sdkId
# trait (S3, EC2, IAM, CloudHSMv2, etc.) â it cannot be derived
# mechanically from the basename for acronym-style names.
#
# Used by all_known_services() for the A4-B build pipeline. New
# Smithy services added by AWS need to be added here AND, if their
# name doesn't round-trip through lc(class), to %PAWS_TO_SMITHY.
#
# Entries that only existed for backward compatibility with legacy
# auto-lib names (Sso/SsoOidc duplicates of SSO/SSOOidc, SSMSAP
# misspelling of SsmSap) were removed in the build-pipeline-hardening
# cleanup. Services in %PAWS_DROPPED_SERVICES and services whose
# Smithy IR was removed by AWS are no longer listed here.
our @KNOWN_PAWS_SERVICE_NAMES = qw(
    ACM ACMPCA AccessAnalyzer Amplify
    AmplifyBackend ApiGateway ApiGatewayManagement ApiGatewayV2
    AppConfig AppIntegrations AppMesh AppRunner AppStream AppSync
    Appflow ApplicationAutoScaling ApplicationCostProfiler
    ApplicationInsights Athena AuditManager AutoScaling
    AutoScalingPlans Backup BackupGateway Batch BillingConductor
    Braket Budgets CUR Chime ChimeSDKIdentity ChimeSDKMediaPipelines
    ChimeSDKMeetings ChimeSDKMessaging Cloud9 CloudDirectory
    CloudFormation CloudFront CloudHSM CloudHSMv2 CloudSearch
    CloudSearchDomain CloudTrail CloudTrailData CloudWatch
    CloudWatchEvents CloudWatchLogs CodeArtifact CodeBuild CodeCommit
    CodeDeploy CodeGuruProfiler CodeGuruReviewer CodePipeline
    CodeStarConnections CodeStarNotifications CognitoIdentity
    CognitoIdp CognitoSync Comprehend ComprehendMedical
    ComputeOptimizer Config Connect ConnectCampaigns ConnectCases
    ConnectContactLens ConnectParticipant ControlTower CostExplorer
    CustomerProfiles DAX DLM DMS DS DataExchange DataPipeline
    DataSync Detective DeviceFarm DevOpsGuru DirectConnect Discovery
    DocDB DocDBElastic Drs DynamoDB DynamoDBStreams EBS EC2
    EC2InstanceConnect ECR ECRPublic ECS EFS EKS EMR EMRContainers
    EMRServerless ELB ELBv2 ES ElastiCache ElasticBeanstalk
    ElasticTranscoder EventBridge FIS FMS FSX Finspace
    FinspaceData Firehose Forecast ForecastQuery FraudDetector
    GameLift Glacier GlobalAccelerator Glue GlueDataBrew Grafana
    Greengrass GreengrassV2 GroundStation GuardDuty Health
    HealthLake IAM IVS IVSRealTime IdentityStore
    Imagebuilder InspectorScan Inspector Inspector2
    InternetMonitor IoT IoTData IoTEvents IoTEventsData
    IoTFleetWise IoTJobsData
    IoTSecureTunneling IoTSiteWise IoTThingsGraph IoTTwinMaker
    IoTWireless IotDeviceAdvisor KMS Kafka KafkaConnect Kendra
    KendraRanking KeySpaces Kinesis KinesisAnalytics
    KinesisAnalyticsV2 KinesisVideo KinesisVideoArchivedMedia
    KinesisVideoMedia KinesisVideoSignaling LakeFormation Lambda
    LexModels LexModelsV2 LexRuntime LexRuntimeV2 LicenseManager
    LicenseManagerLinuxSubscriptions LicenseManagerUserSubscriptions
    Lightsail Location LookoutEquipment
    M2 MQ MTurk MWAA MachineLearning Macie2
    ManagedBlockchain MarketplaceCatalog MarketplaceCommerceAnalytics
    MarketplaceEntitlement MarketplaceMetering MediaConnect
    MediaConvert MediaLive MediaPackage MediaPackageVod MediaStore
    MediaStoreData MediaTailor MemoryDB
    MigrationHub MigrationHubConfig MigrationHubRefactorSpaces
    MigrationHubStrategy NetworkFirewall NetworkManager
    OAM OpenSearch OpenSearchServerless
    Organizations Outposts Panorama
    PartnerCentralSelling Personalize PersonalizeEvents
    PersonalizeRuntime PerformanceInsights Pinpoint PinpointEmail
    PinpointSMSVoice PinpointSMSVoiceV2 Polly Pricing
    Prometheus Proton QBusiness QuickSight RAM
    RDS RDSData RUM RBin Redshift RedshiftData
    RedshiftServerless Rekognition Resiliencehub ResourceExplorer2
    ResourceGroups ResourceTagging RolesAnywhere Route53
    Route53Domains Route53RecoveryCluster Route53RecoveryControlConfig
    Route53RecoveryReadiness Route53Resolver S3 S3Control SDB SES
    SESV2 SFN SNS SQS SSM SSMContacts SSMIncidents SsmSap SSO
    SSOAdmin SSOOidc SageMaker SageMakerA2IRuntime SageMakerEdge
    SageMakerFeatureStoreRuntime SageMakerGeospatial SageMakerMetrics
    SageMakerRuntime SavingsPlans Schemas SecretsManager
    SecurityHub SecurityIR ServerlessRepo ServiceCatalog
    ServiceCatalogAppRegistry ServiceQuotas Shield Signer
    SimpleWorkflow Snowball SnowDeviceManagement
    StepFunctions StorageGateway Support SupportApp SupplyChain
    Synthetics Textract TimestreamInfluxDB TimestreamQuery
    TimestreamWrite Tnb Transcribe TranscribeStreaming Transfer
    Translate VPCLattice VerifiedPermissions VoiceID WAF WAFRegional
    WAFV2 WellArchitected Wisdom WorkDocs WorkMail
    WorkMailMessageFlow WorkSpaces WorkSpacesThinClient
    WorkSpacesWeb XRay
);


# A4-B build-pipeline entry. Returns the sorted list of Paws service
# class names whose Smithy IR file is present under any configured
# smithy_search_path AND whose Paws class name appears in
# @KNOWN_PAWS_SERVICE_NAMES (so the canonical capitalisation is
# known). Drops anything in %PAWS_DROPPED_SERVICES.
sub all_known_services {
    my ($self) = @_;
    my %has_smithy_ir;
    for my $base (@{ $self->smithy_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        for my $entry (readdir $dh) {
            next if $entry =~ /^\./;
            my $dir = File::Spec->catdir($base, $entry);
            next if !-d $dir;
            my $ir_file = File::Spec->catfile($dir, "$entry.smithy.json");
            $has_smithy_ir{$entry} = 1 if -r $ir_file;
        }
        closedir $dh;
    }
    my @out;
    for my $paws (@KNOWN_PAWS_SERVICE_NAMES) {
        next if exists $PAWS_DROPPED_SERVICES{$paws};
        my $base = _paws_to_smithy($paws);
        next unless $has_smithy_ir{$base};
        push @out, $paws;
    }
    return sort @out;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Model::Loader::Resolver - find and load a service via the first
available loader in resolution order

=head1 SYNOPSIS

  use Paws::Model::Loader::Resolver;

  # Default: Smithy-only against share/smithy/.
  my $resolver = Paws::Model::Loader::Resolver->new;
  my ($ir, $loader_name) = $resolver->load_service('IAM');
  say "loaded via $loader_name";

  # Opt back into botocore for a deprecated-but-still-needed service:
  $ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';
  my $r = Paws::Model::Loader::Resolver->new(
      botocore_search_paths => ['/path/to/botocore/botocore/data'],
  );

=head1 NAMING

Paws service class names do not always match the Smithy file basename.
The C<%Paws::Model::Loader::Resolver::PAWS_TO_SMITHY> hash holds the
explicit map; lc(class) is the fallback.

The C<%Paws::Model::Loader::Resolver::PAWS_DROPPED_SERVICES> hash
documents the 14 botocore-era services that are no longer ship-able
because AWS retired them. Asking for one of them dies with a pointer
at C<docs/deprecated-services.md>.

=cut
