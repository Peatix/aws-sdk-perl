
package Paws::PCS::ListComputeNodeGroupsResponse;
  use Moose;
  has ComputeNodeGroups => (is => 'ro', isa => 'ArrayRef[Paws::PCS::ComputeNodeGroupSummary]', traits => ['NameInRequest'], request_name => 'computeNodeGroups' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::ListComputeNodeGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeNodeGroups => ArrayRef[L<Paws::PCS::ComputeNodeGroupSummary>]

The list of compute node groups for the cluster.


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