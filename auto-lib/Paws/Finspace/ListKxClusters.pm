
package Paws::Finspace::ListKxClusters;
  use Moose;
  has ClusterType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clusterType');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKxClusters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::ListKxClustersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxClusters - Arguments for method ListKxClusters on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKxClusters on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method ListKxClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKxClusters.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $ListKxClustersResponse = $finspace->ListKxClusters(
      EnvironmentId => 'MyKxEnvironmentId',
      ClusterType   => 'HDB',                  # OPTIONAL
      MaxResults    => 1,                      # OPTIONAL
      NextToken     => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $KxClusterSummaries = $ListKxClustersResponse->KxClusterSummaries;
    my $NextToken          = $ListKxClustersResponse->NextToken;

    # Returns a L<Paws::Finspace::ListKxClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/ListKxClusters>

=head1 ATTRIBUTES


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

=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

A token that indicates where a results page should begin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKxClusters in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

