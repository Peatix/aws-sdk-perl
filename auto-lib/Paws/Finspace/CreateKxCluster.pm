
package Paws::Finspace::CreateKxCluster;
  use Moose;
  has AutoScalingConfiguration => (is => 'ro', isa => 'Paws::Finspace::AutoScalingConfiguration', traits => ['NameInRequest'], request_name => 'autoScalingConfiguration');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode', required => 1);
  has CacheStorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCacheStorageConfiguration]', traits => ['NameInRequest'], request_name => 'cacheStorageConfigurations');
  has CapacityConfiguration => (is => 'ro', isa => 'Paws::Finspace::CapacityConfiguration', traits => ['NameInRequest'], request_name => 'capacityConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ClusterDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterDescription');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName', required => 1);
  has ClusterType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterType', required => 1);
  has Code => (is => 'ro', isa => 'Paws::Finspace::CodeConfiguration', traits => ['NameInRequest'], request_name => 'code');
  has CommandLineArguments => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCommandLineArgument]', traits => ['NameInRequest'], request_name => 'commandLineArguments');
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDatabaseConfiguration]', traits => ['NameInRequest'], request_name => 'databases');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole');
  has InitializationScript => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'initializationScript');
  has ReleaseLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseLabel', required => 1);
  has SavedownStorageConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxSavedownStorageConfiguration', traits => ['NameInRequest'], request_name => 'savedownStorageConfiguration');
  has ScalingGroupConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxScalingGroupConfiguration', traits => ['NameInRequest'], request_name => 'scalingGroupConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TickerplantLogConfiguration => (is => 'ro', isa => 'Paws::Finspace::TickerplantLogConfiguration', traits => ['NameInRequest'], request_name => 'tickerplantLogConfiguration');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Finspace::VpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxCluster - Arguments for method CreateKxCluster on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxCluster on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxCluster.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxClusterResponse = $finspace->CreateKxCluster(
      AzMode           => 'SINGLE',
      ClusterName      => 'MyKxClusterName',
      ClusterType      => 'HDB',
      EnvironmentId    => 'MyKxEnvironmentId',
      ReleaseLabel     => 'MyReleaseLabel',
      VpcConfiguration => {
        IpAddressType    => 'IP_V4',    # values: IP_V4; OPTIONAL
        SecurityGroupIds => [
          'MySecurityGroupIdString', ...    # min: 1, max: 1024
        ],    # OPTIONAL
        SubnetIds => [
          'MySubnetIdString', ...    # min: 1, max: 1024
        ],    # OPTIONAL
        VpcId => 'MyVpcIdString',    # min: 1, max: 1024; OPTIONAL
      },
      AutoScalingConfiguration => {
        AutoScalingMetric => 'CPU_UTILIZATION_PERCENTAGE'
        ,    # values: CPU_UTILIZATION_PERCENTAGE; OPTIONAL
        MaxNodeCount            => 1,    # min: 1; OPTIONAL
        MetricTarget            => 1,    # min: 1, max: 100; OPTIONAL
        MinNodeCount            => 1,    # min: 1; OPTIONAL
        ScaleInCooldownSeconds  => 1,    # max: 100000; OPTIONAL
        ScaleOutCooldownSeconds => 1,    # max: 100000; OPTIONAL
      },    # OPTIONAL
      AvailabilityZoneId         => 'MyAvailabilityZoneId',    # OPTIONAL
      CacheStorageConfigurations => [
        {
          Size => 1,
          Type => 'MyKxCacheStorageType',                      # min: 8, max: 10

        },
        ...
      ],    # OPTIONAL
      CapacityConfiguration => {
        NodeCount => 1,               # min: 1; OPTIONAL
        NodeType  => 'MyNodeType',    # min: 1, max: 32; OPTIONAL
      },    # OPTIONAL
      ClientToken        => 'MyClientToken',             # OPTIONAL
      ClusterDescription => 'MyKxClusterDescription',    # OPTIONAL
      Code               => {
        S3Bucket        => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
        S3Key           => 'MyS3Key',              # min: 1, max: 1024; OPTIONAL
        S3ObjectVersion => 'MyS3ObjectVersion',    # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
      CommandLineArguments => [
        {
          Key   => 'MyKxCommandLineArgumentKey',   # min: 1, max: 1024; OPTIONAL
          Value => 'MyKxCommandLineArgumentValue', # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Databases => [
        {
          DatabaseName        => 'MyDatabaseName',    # min: 3, max: 63
          CacheConfigurations => [
            {
              CacheType => 'MyKxCacheStorageType',    # min: 8, max: 10
              DbPaths   => [
                'MyDbPath', ...                       # min: 1, max: 1025
              ],
              DataviewName => 'MyKxDataviewName',    # min: 3, max: 63; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          ChangesetId           => 'MyChangesetId',  # min: 1, max: 26; OPTIONAL
          DataviewConfiguration => {
            ChangesetId       => 'MyChangesetId',    # min: 1, max: 26; OPTIONAL
            DataviewName      => 'MyKxDataviewName', # min: 3, max: 63; OPTIONAL
            DataviewVersionId => 'MyVersionId',      # min: 1, max: 26; OPTIONAL
            SegmentConfigurations => [
              {
                DbPaths => [
                  'MyDbPath', ...    # min: 1, max: 1025
                ],    # min: 1, max: 30
                VolumeName => 'MyKxVolumeName',    # min: 3, max: 63
                OnDemand   => 1,                   # OPTIONAL
              },
              ...
            ],    # max: 50; OPTIONAL
          },    # OPTIONAL
          DataviewName => 'MyKxDataviewName',    # min: 3, max: 63; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ExecutionRole        => 'MyExecutionRoleArn',                # OPTIONAL
      InitializationScript => 'MyInitializationScriptFilePath',    # OPTIONAL
      SavedownStorageConfiguration => {
        Size       => 1,                   # min: 10, max: 16000; OPTIONAL
        Type       => 'SDS01',             # values: SDS01; OPTIONAL
        VolumeName => 'MyKxVolumeName',    # min: 3, max: 63
      },    # OPTIONAL
      ScalingGroupConfiguration => {
        MemoryReservation => 1,                         # min: 6
        NodeCount         => 1,                         # min: 1
        ScalingGroupName  => 'MyKxScalingGroupName',    # min: 3, max: 63
        Cpu               => 1,                         # min: 0.1; OPTIONAL
        MemoryLimit       => 1,                         # min: 6
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      TickerplantLogConfiguration => {
        TickerplantLogVolumes => [
          'MyVolumeName', ...    # min: 3, max: 63
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AutoScalingConfiguration =
      $CreateKxClusterResponse->AutoScalingConfiguration;
    my $AvailabilityZoneId = $CreateKxClusterResponse->AvailabilityZoneId;
    my $AzMode             = $CreateKxClusterResponse->AzMode;
    my $CacheStorageConfigurations =
      $CreateKxClusterResponse->CacheStorageConfigurations;
    my $CapacityConfiguration = $CreateKxClusterResponse->CapacityConfiguration;
    my $ClusterDescription    = $CreateKxClusterResponse->ClusterDescription;
    my $ClusterName           = $CreateKxClusterResponse->ClusterName;
    my $ClusterType           = $CreateKxClusterResponse->ClusterType;
    my $Code                  = $CreateKxClusterResponse->Code;
    my $CommandLineArguments  = $CreateKxClusterResponse->CommandLineArguments;
    my $CreatedTimestamp      = $CreateKxClusterResponse->CreatedTimestamp;
    my $Databases             = $CreateKxClusterResponse->Databases;
    my $EnvironmentId         = $CreateKxClusterResponse->EnvironmentId;
    my $ExecutionRole         = $CreateKxClusterResponse->ExecutionRole;
    my $InitializationScript  = $CreateKxClusterResponse->InitializationScript;
    my $LastModifiedTimestamp = $CreateKxClusterResponse->LastModifiedTimestamp;
    my $ReleaseLabel          = $CreateKxClusterResponse->ReleaseLabel;
    my $SavedownStorageConfiguration =
      $CreateKxClusterResponse->SavedownStorageConfiguration;
    my $ScalingGroupConfiguration =
      $CreateKxClusterResponse->ScalingGroupConfiguration;
    my $Status       = $CreateKxClusterResponse->Status;
    my $StatusReason = $CreateKxClusterResponse->StatusReason;
    my $TickerplantLogConfiguration =
      $CreateKxClusterResponse->TickerplantLogConfiguration;
    my $Volumes          = $CreateKxClusterResponse->Volumes;
    my $VpcConfiguration = $CreateKxClusterResponse->VpcConfiguration;

    # Returns a L<Paws::Finspace::CreateKxClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxCluster>

=head1 ATTRIBUTES


=head2 AutoScalingConfiguration => L<Paws::Finspace::AutoScalingConfiguration>

The configuration based on which FinSpace will scale in or scale out
nodes in your cluster.



=head2 AvailabilityZoneId => Str

The availability zone identifiers for the requested regions.



=head2 B<REQUIRED> AzMode => Str

The number of availability zones you want to assign per cluster. This
can be one of the following

=over

=item *

C<SINGLE> E<ndash> Assigns one availability zone per cluster.

=item *

C<MULTI> E<ndash> Assigns all the availability zones per cluster.

=back


Valid values are: C<"SINGLE">, C<"MULTI">

=head2 CacheStorageConfigurations => ArrayRef[L<Paws::Finspace::KxCacheStorageConfiguration>]

The configurations for a read only cache storage associated with a
cluster. This cache will be stored as an FSx Lustre that reads from the
S3 store.



=head2 CapacityConfiguration => L<Paws::Finspace::CapacityConfiguration>

A structure for the metadata of a cluster. It includes information like
the CPUs needed, memory of instances, and number of instances.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 ClusterDescription => Str

A description of the cluster.



=head2 B<REQUIRED> ClusterName => Str

A unique name for the cluster that you want to create.



=head2 B<REQUIRED> ClusterType => Str

Specifies the type of KDB database that is being created. The following
types are available:

=over

=item *

HDB E<ndash> A Historical Database. The data is only accessible with
read-only permissions from one of the FinSpace managed kdb databases
mounted to the cluster.

=item *

RDB E<ndash> A Realtime Database. This type of database captures all
the data from a ticker plant and stores it in memory until the end of
day, after which it writes all of its data to a disk and reloads the
HDB. This cluster type requires local storage for temporary storage of
data during the savedown process. If you specify this field in your
request, you must provide the C<savedownStorageConfiguration>
parameter.

=item *

GATEWAY E<ndash> A gateway cluster allows you to access data across
processes in kdb systems. It allows you to create your own routing
logic using the initialization scripts and custom code. This type of
cluster does not require a writable local storage.

=item *

GP E<ndash> A general purpose cluster allows you to quickly iterate on
code during development by granting greater access to system commands
and enabling a fast reload of custom code. This cluster type can
optionally mount databases including cache and savedown storage. For
this cluster type, the node count is fixed at 1. It does not support
autoscaling and supports only C<SINGLE> AZ mode.

=item *

Tickerplant E<ndash> A tickerplant cluster allows you to subscribe to
feed handlers based on IAM permissions. It can publish to RDBs, other
Tickerplants, and real-time subscribers (RTS). Tickerplants can persist
messages to log, which is readable by any RDB environment. It supports
only single-node that is only one kdb process.

=back


Valid values are: C<"HDB">, C<"RDB">, C<"GATEWAY">, C<"GP">, C<"TICKERPLANT">

=head2 Code => L<Paws::Finspace::CodeConfiguration>

The details of the custom code that you want to use inside a cluster
when analyzing a data. It consists of the S3 source bucket, location,
S3 object version, and the relative path from where the custom code is
loaded into the cluster.



=head2 CommandLineArguments => ArrayRef[L<Paws::Finspace::KxCommandLineArgument>]

Defines the key-value pairs to make them available inside the cluster.



=head2 Databases => ArrayRef[L<Paws::Finspace::KxDatabaseConfiguration>]

A list of databases that will be available for querying.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 ExecutionRole => Str

An IAM role that defines a set of permissions associated with a
cluster. These permissions are assumed when a cluster attempts to
access another cluster.



=head2 InitializationScript => Str

Specifies a Q program that will be run at launch of a cluster. It is a
relative path within I<.zip> file that contains the custom code, which
will be loaded on the cluster. It must include the file name itself.
For example, C<somedir/init.q>.



=head2 B<REQUIRED> ReleaseLabel => Str

The version of FinSpace managed kdb to run.



=head2 SavedownStorageConfiguration => L<Paws::Finspace::KxSavedownStorageConfiguration>

The size and type of the temporary storage that is used to hold data
during the savedown process. This parameter is required when you choose
C<clusterType> as RDB. All the data written to this storage space is
lost when the cluster node is restarted.



=head2 ScalingGroupConfiguration => L<Paws::Finspace::KxScalingGroupConfiguration>

The structure that stores the configuration details of a scaling group.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the cluster. You can add up to 50
tags to a cluster.



=head2 TickerplantLogConfiguration => L<Paws::Finspace::TickerplantLogConfiguration>

A configuration to store Tickerplant logs. It consists of a list of
volumes that will be mounted to your cluster. For the cluster type
C<Tickerplant>, the location of the TP volume on the cluster will be
available by using the global variable C<.aws.tp_log_path>.



=head2 B<REQUIRED> VpcConfiguration => L<Paws::Finspace::VpcConfiguration>

Configuration details about the network where the Privatelink endpoint
of the cluster resides.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxCluster in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

