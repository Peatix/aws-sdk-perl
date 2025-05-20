
package Paws::PCS::ListClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::PCS::ClusterSummary]', traits => ['NameInRequest'], request_name => 'clusters' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::ListClustersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Clusters => ArrayRef[L<Paws::PCS::ClusterSummary>]

The list of clusters.


=head2 NextToken => Str

The value of C<nextToken> is a unique pagination token for each page of
results returned. If C<nextToken> is returned, there are more results
available. Make the call again using the returned token to retrieve the
next page. Keep all other arguments unchanged. Each pagination token
expires after 24 hours. Using an expired pagination token returns an
C<HTTP 400 InvalidToken> error.


=head2 _request_id => Str


=cut

1;