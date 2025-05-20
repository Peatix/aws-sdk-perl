
package Paws::CleanRooms::ListMembershipsOutput;
  use Moose;
  has MembershipSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::MembershipSummary]', traits => ['NameInRequest'], request_name => 'membershipSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListMembershipsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipSummaries => ArrayRef[L<Paws::CleanRooms::MembershipSummary>]

The list of memberships returned from the ListMemberships operation.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

