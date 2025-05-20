
package Paws::Finspace::CreateKxClusterResponse;
  use Moose;
  has AutoScalingConfiguration => (is => 'ro', isa => 'Paws::Finspace::AutoScalingConfiguration', traits => ['NameInRequest'], request_name => 'autoScalingConfiguration');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode');
  has CacheStorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCacheStorageConfiguration]', traits => ['NameInRequest'], request_name => 'cacheStorageConfigurations');
  has CapacityConfiguration => (is => 'ro', isa => 'Paws::Finspace::CapacityConfiguration', traits => ['NameInRequest'], request_name => 'capacityConfiguration');
  has ClusterDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterDescription');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName');
  has ClusterType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterType');
  has Code => (is => 'ro', isa => 'Paws::Finspace::CodeConfiguration', traits => ['NameInRequest'], request_name => 'code');
  has CommandLineArguments => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCommandLineArgument]', traits => ['NameInRequest'], request_name => 'commandLineArguments');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDatabaseConfiguration]', traits => ['NameInRequest'], request_name => 'databases');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole');
  has InitializationScript => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'initializationScript');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has ReleaseLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseLabel');
  has SavedownStorageConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxSavedownStorageConfiguration', traits => ['NameInRequest'], request_name => 'savedownStorageConfiguration');
  has ScalingGroupConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxScalingGroupConfiguration', traits => ['NameInRequest'], request_name => 'scalingGroupConfiguration');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has TickerplantLogConfiguration => (is => 'ro', isa => 'Paws::Finspace::TickerplantLogConfiguration', traits => ['NameInRequest'], request_name => 'tickerplantLogConfiguration');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::Volume]', traits => ['NameInRequest'], request_name => 'volumes');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Finspace::VpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxClusterResponse

=head1 ATTRIBUTES


=head2 AutoScalingConfiguration => L<Paws::Finspace::AutoScalingConfiguration>

The configuration based on which FinSpace will scale in or scale out
nodes in your cluster.


=head2 AvailabilityZoneId => Str

The availability zone identifiers for the requested regions.


=head2 AzMode => Str

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


=head2 ClusterDescription => Str

A description of the cluster.


=head2 ClusterName => Str

A unique name for the cluster.


=head2 ClusterType => Str

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


=head2 CreatedTimestamp => Str

The timestamp at which the cluster was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 Databases => ArrayRef[L<Paws::Finspace::KxDatabaseConfiguration>]

A list of databases that will be available for querying.


=head2 EnvironmentId => Str

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


=head2 LastModifiedTimestamp => Str

The last time that the cluster was modified. The value is determined as
epoch time in milliseconds. For example, the value for Monday, November
1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ReleaseLabel => Str

A version of the FinSpace managed kdb to run.


=head2 SavedownStorageConfiguration => L<Paws::Finspace::KxSavedownStorageConfiguration>

The size and type of the temporary storage that is used to hold data
during the savedown process. This parameter is required when you choose
C<clusterType> as RDB. All the data written to this storage space is
lost when the cluster node is restarted.


=head2 ScalingGroupConfiguration => L<Paws::Finspace::KxScalingGroupConfiguration>

The structure that stores the configuration details of a scaling group.


=head2 Status => Str

The status of cluster creation.

=over

=item *

PENDING E<ndash> The cluster is pending creation.

=item *

CREATING E<ndash> The cluster creation process is in progress.

=item *

CREATE_FAILED E<ndash> The cluster creation process has failed.

=item *

RUNNING E<ndash> The cluster creation process is running.

=item *

UPDATING E<ndash> The cluster is in the process of being updated.

=item *

DELETING E<ndash> The cluster is in the process of being deleted.

=item *

DELETED E<ndash> The cluster has been deleted.

=item *

DELETE_FAILED E<ndash> The cluster failed to delete.

=back


Valid values are: C<"PENDING">, C<"CREATING">, C<"CREATE_FAILED">, C<"RUNNING">, C<"UPDATING">, C<"DELETING">, C<"DELETED">, C<"DELETE_FAILED">
=head2 StatusReason => Str

The error message when a failed state occurs.


=head2 TickerplantLogConfiguration => L<Paws::Finspace::TickerplantLogConfiguration>




=head2 Volumes => ArrayRef[L<Paws::Finspace::Volume>]

A list of volumes mounted on the cluster.


=head2 VpcConfiguration => L<Paws::Finspace::VpcConfiguration>

Configuration details about the network where the Privatelink endpoint
of the cluster resides.


=head2 _request_id => Str


=cut

