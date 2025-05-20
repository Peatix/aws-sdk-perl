
package Paws::Neptune::GlobalClustersMessage;
  use Moose;
  has GlobalClusters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::GlobalCluster]', request_name => 'GlobalClusterMember', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::GlobalClustersMessage

=head1 ATTRIBUTES


=head2 GlobalClusters => ArrayRef[L<Paws::Neptune::GlobalCluster>]

The list of global clusters and instances returned by this request.


=head2 Marker => Str

A pagination token. If this parameter is returned in the response, more
records are available, which can be retrieved by one or more additional
calls to C<DescribeGlobalClusters>.


=head2 _request_id => Str


=cut

