
package Paws::Finspace::ListKxClustersResponse;
  use Moose;
  has KxClusterSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCluster]', traits => ['NameInRequest'], request_name => 'kxClusterSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxClustersResponse

=head1 ATTRIBUTES


=head2 KxClusterSummaries => ArrayRef[L<Paws::Finspace::KxCluster>]

Lists the cluster details.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

