
package Paws::EKS::DescribeClusterVersionsResponse;
  use Moose;
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Paws::EKS::ClusterVersionInformation]', traits => ['NameInRequest'], request_name => 'clusterVersions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeClusterVersionsResponse

=head1 ATTRIBUTES


=head2 ClusterVersions => ArrayRef[L<Paws::EKS::ClusterVersionInformation>]

List of cluster version information objects.


=head2 NextToken => Str

Pagination token for the next set of results.


=head2 _request_id => Str


=cut

