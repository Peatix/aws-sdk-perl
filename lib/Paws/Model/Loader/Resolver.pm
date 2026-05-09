package Paws::Model::Loader::Resolver;

# Loader resolver: given a service name, find the on-disk source
# files in either the botocore or the smithy layout and return a
# Paws::Model::IR::Service via the appropriate loader.
#
# Default order: smithy first, botocore fallback. Override via
#   PAWS_LOADER_ORDER=Botocore,Smithy
# if a regression appears on a specific service.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);
use File::Spec;

use Paws::Model::IR;
use Paws::Model::Loader::Botocore;
use Paws::Model::Loader::Smithy;

use Moose;

# Botocore directory name -> Paws SDK class name overrides.
#
# The default mapping derived from `metadata.serviceId` (whitespace
# stripped, first letter capitalised) gets the right answer for most
# services but produces the wrong name for ~70 cases where Paws has
# historically diverged from the upstream serviceId. This table is the
# vendored copy of Paws::API::Builder::Paws->servicefile_to_class_overrides
# so the runtime materialiser path can locate `Paws::ELB`,
# `Paws::LexRuntime`, `Paws::SDB`, `Paws::CloudWatch`, ... that live in
# botocore directories with completely different names (`elb`,
# `lex-runtime`, `sdb`, `monitoring`, ...).
#
# Keep in sync with builder-lib/Paws/API/Builder/Paws.pm. The two
# tables are intentionally redundant: the builder produces auto-lib/
# at AOT time, the resolver builds materialised classes at runtime,
# and both have to land on the same Paws::<Name> for downstream
# consumers (test helpers, hand-written services, user code) to
# resolve a single canonical SDK name.
my %BOTOCORE_DIR_TO_SDK_NAME = (
    'acm-pca'                           => 'ACMPCA',
    'alexaforbusiness'                  => 'AlexaForBusiness',
    'amp'                               => 'Prometheus',
    'apigateway'                        => 'ApiGateway',
    'apigatewaymanagementapi'           => 'ApiGatewayManagement',
    'application-autoscaling'           => 'ApplicationAutoScaling',
    'application-insights'              => 'ApplicationInsights',
    'appmesh'                           => 'AppMesh',
    'autoscaling'                       => 'AutoScaling',
    'autoscaling-plans'                 => 'AutoScalingPlans',
    'ce'                                => 'CostExplorer',
    'cloudhsmv2'                        => 'CloudHSMv2',
    'cloudsearchdomain'                 => 'CloudSearchDomain',
    'codeartifact'                      => 'CodeArtifact',
    'codeguru-reviewer'                 => 'CodeGuruReviewer',
    'codestar-connections'              => 'CodeStarConnections',
    'codestar-notifications'            => 'CodeStarNotifications',
    'cognito-identity'                  => 'CognitoIdentity',
    'cognito-idp'                       => 'CognitoIdp',
    'cognito-sync'                      => 'CognitoSync',
    'config'                            => 'Config',
    'cur'                               => 'CUR',
    'databrew'                          => 'GlueDataBrew',
    'datapipeline'                      => 'DataPipeline',
    'datasync'                          => 'Datasync',
    'devicefarm'                        => 'DeviceFarm',
    'directconnect'                     => 'DirectConnect',
    'discovery'                         => 'Discovery',
    'dms'                               => 'DMS',
    'ds'                                => 'DS',
    'dynamodbstreams'                   => 'DynamoDBStreams',
    'ec2-instance-connect'              => 'EC2InstanceConnect',
    'ecr-public'                        => 'ECRPublic',
    'elasticbeanstalk'                  => 'ElasticBeanstalk',
    # botocore's "elasticfilesystem" is Paws::EFS in master.
    'elasticfilesystem'                 => 'EFS',
    'elasticloadbalancing'              => 'ELB',
    'elasticmapreduce'                  => 'EMR',
    'elastictranscoder'                 => 'ElasticTranscoder',
    'elb'                               => 'ELB',
    'elbv2'                             => 'ELBv2',
    'email'                             => 'SES',
    'emr-containers'                    => 'EMRContainers',
    'es'                                => 'ES',
    'events'                            => 'CloudWatchEvents',
    'finspace-data'                     => 'FinspaceData',
    'fis'                               => 'FIS',
    'forecast'                          => 'Forecast',
    'forecastquery'                     => 'ForecastQuery',
    'fsx'                               => 'FSX',
    'globalaccelerator'                 => 'GlobalAccelerator',
    'identitystore'                     => 'SSOIdentityStore',
    'imagebuilder'                      => 'ImageBuilder',
    'iot-data'                          => 'IoTData',
    'iot-jobs-data'                     => 'IoTJobsData',
    'iot1click-devices'                 => 'IoT1ClickDevices',
    'iot1click-projects'                => 'IoT1ClickProjects',
    'iotdeviceadvisor'                  => 'IoTDeviceAdvisor',
    'iotevents'                         => 'IoTEvents',
    'iotevents-data'                    => 'IoTEventsData',
    'ivs'                               => 'IVS',
    'kendra'                            => 'Kendra',
    'kinesis-video-archived-media'      => 'KinesisVideoArchivedMedia',
    'kinesis-video-media'               => 'KinesisVideoMedia',
    'kinesisanalytics'                  => 'KinesisAnalytics',
    'kinesisanalyticsv2'                => 'KinesisAnalyticsV2',
    'kinesisvideo'                      => 'KinesisVideo',
    'lex-models'                        => 'LexModels',
    'lex-runtime'                       => 'LexRuntime',
    'license-manager'                   => 'LicenseManager',
    'location'                          => 'LocationService',
    'logs'                              => 'CloudWatchLogs',
    'machinelearning'                   => 'MachineLearning',
    'marketplace-catalog'               => 'MarketplaceCatalog',
    'marketplace-entitlement'           => 'MarketplaceEntitlement',
    'marketplacecommerceanalytics'      => 'MarketplaceCommerceAnalytics',
    'mediapackage-vod'                  => 'MediaPackageVod',
    'mediastore-data'                   => 'MediaStoreData',
    'meteringmarketplace'               => 'MarketplaceMetering',
    'mgh'                               => 'MigrationHub',
    'mgn'                               => 'ApplicationMigration',
    'mobile'                            => 'MobileHub',
    'monitoring'                        => 'CloudWatch',
    'mq'                                => 'MQ',
    'nimble'                            => 'NimbleStudio',
    'personalize-events'                => 'PersonalizeEvents',
    'personalize-runtime'               => 'PersonalizeRuntime',
    'pi'                                => 'PerformanceInsights',
    'pinpoint-email'                    => 'PinpointEmail',
    'pinpoint-sms-voice'                => 'PinpointSMSVoice',
    'qldb-session'                      => 'QLDBSession',
    'quicksight'                        => 'Quicksight',
    'rds-data'                          => 'RDSData',
    'redshift'                          => 'RedShift',
    'resource-groups'                   => 'ResourceGroups',
    'resourcegroupstaggingapi'          => 'ResourceTagging',
    'robomaker'                         => 'Robomaker',
    'route53'                           => 'Route53',
    'route53domains'                    => 'Route53Domains',
    's3control'                         => 'S3Control',
    'sagemaker-edge'                    => 'SageMakerEdge',
    'sagemaker-runtime'                 => 'SageMakerRuntime',
    'savingsplans'                      => 'SavingsPlans',
    'sdb'                               => 'SDB',
    'schemas'                           => 'Schemas',
    'secretsmanager'                    => 'SecretsManager',
    'serverlessrepo'                    => 'ServerlessRepo',
    'service-quotas'                    => 'ServiceQuotas',
    'servicecatalog'                    => 'ServiceCatalog',
    'signer'                            => 'Signer',
    'signin'                            => 'Signin',
    'simpledb'                          => 'SimpleDB',
    'sms-voice'                         => 'PinpointSMSVoice',
    'sso-oidc'                          => 'SSOOidc',
    'stepfunctions'                     => 'StepFunctions',
    'storagegateway'                    => 'StorageGateway',
    'swf'                               => 'SimpleWorkflow',
    'waf-regional'                      => 'WAFRegional',
);

# Where to look for source files. Each path is checked in turn.
has botocore_search_paths => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { ['botocore/botocore/data'] },
);

has smithy_search_paths => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { ['share/smithy'] },
);

# Order in which loaders are tried. The first one that finds a source
# file wins. Defaults from PAWS_LOADER_ORDER if set, else
# 'Smithy,Botocore'.
has order => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub {
        my $env = $ENV{PAWS_LOADER_ORDER};
        if (defined $env && length $env) {
            return [ split /,/, $env ];
        }
        return [ 'Smithy', 'Botocore' ];
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

    # Smithy: filenames are the SDK name. Both flat and nested
    # layouts are supported.
    for my $base (@{ $self->smithy_search_paths }) {
        next if !-d $base;
        opendir(my $dh, $base) or next;
        for my $entry (readdir $dh) {
            next if $entry =~ /^\.\.?$/;
            my $path = File::Spec->catfile($base, $entry);
            if (-f $path && $entry =~ /^([A-Za-z][\w-]*)\.smithy\.json\z/) {
                $seen{$1} = 1;
            }
            elsif (-d $path) {
                # nested: <base>/<svc>/<svc>.smithy.json
                for my $candidate (
                    File::Spec->catfile($path, "$entry.smithy.json"),
                    File::Spec->catfile($path, lc($entry) . ".smithy.json"),
                ) {
                    if (-r $candidate) {
                        $seen{$entry} = 1;
                        last;
                    }
                }
            }
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

    # Pull the directory leaf to consult the override map. This lets
    # us honour `lex-runtime` -> `LexRuntime` etc. without paying the
    # JSON decode for services where the directory name has a known
    # mapping.
    my $dir_leaf = (File::Spec->splitdir($svc_path))[-1];
    my $override = $BOTOCORE_DIR_TO_SDK_NAME{$dir_leaf};

    my $sid = $override;
    if (!defined $sid) {
        open(my $fh, '<', $service_2) or return undef;
        local $/;
        my $json = <$fh>;
        close $fh;

        require JSON::PP;
        my $struct = eval { JSON::PP->new->utf8(1)->decode($json) };
        return undef if !$struct;
        $sid = $struct->{metadata}->{serviceId};
        return undef if !defined $sid;

        # Same fix-ups Paws::API::Builder::Paws applies (see
        # boto_file_information): capitalise first letter, drop
        # whitespace, so e.g. `cloud watch` becomes `CloudWatch`.
        substr($sid, 0, 1) = uc(substr($sid, 0, 1));
        $sid =~ s/\s+//g;
    }

    $cache->{$svc_path}                  = $sid;
    $self->_botocore_sdk_to_path->{$sid} = $service_2;
    return $sid;
}

# Public entry: load the named service via the first loader in the
# resolution order that can find a source file for it.
#
# Returns ($ir, $loader_name).
sub load_service {
    my ($self, $service_name) = @_;

    for my $loader_name (@{ $self->order }) {
        my $path = $self->_find_path_for($loader_name, $service_name);
        next if !defined $path;
        my $loader = $self->_loaders->{$loader_name}
            // croak "resolver: no loader instance for $loader_name";
        # Pass the SDK name through so the loader pins the IR's
        # `name` to the requested name. Without this, the IR comes
        # out with the serviceId-derived name (e.g. botocore says
        # `Elastic Load Balancing` -> `ElasticLoadBalancing`) and the
        # materialiser would build the wrong class (`Paws::ElasticLoadBalancing`
        # rather than `Paws::ELB`).
        my $ir = $loader->load({
            service_2     => $path,
            name_override => $service_name,
        });
        return wantarray ? ($ir, $loader_name) : $ir;
    }

    croak "resolver: no source file found for service=$service_name in any of "
        . join(',', @{ $self->order });
}

# For each loader name, look in the configured search paths for a
# matching source file.
sub _find_path_for {
    my ($self, $loader_name, $service_name) = @_;

    if ($loader_name eq 'Smithy') {
        for my $base (@{ $self->smithy_search_paths }) {
            for my $candidate (
                # Flat layout: share/smithy/<service>.smithy.json
                File::Spec->catfile($base, "$service_name.smithy.json"),
                File::Spec->catfile($base, lc($service_name) . ".smithy.json"),
                # Nested layout (test fixtures, vendored mirrors):
                # share/smithy/<service>/<service>.smithy.json
                File::Spec->catfile($base, $service_name, "$service_name.smithy.json"),
                File::Spec->catfile($base, lc($service_name), lc($service_name) . ".smithy.json"),
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

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Model::Loader::Resolver - find and load a service via the first
available loader in resolution order

=head1 SYNOPSIS

  use Paws::Model::Loader::Resolver;

  my $resolver = Paws::Model::Loader::Resolver->new(
      smithy_search_paths   => ['share/smithy'],
      botocore_search_paths => ['botocore/botocore/data'],
  );

  my ($ir, $loader_name) = $resolver->load_service('IAM');
  say "loaded via $loader_name";

  # Override the default order at process scope:
  $ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';

=cut
