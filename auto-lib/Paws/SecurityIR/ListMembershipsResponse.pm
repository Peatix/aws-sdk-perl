
package Paws::SecurityIR::ListMembershipsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ListMembershipItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListMembershipsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SecurityIR::ListMembershipItem>]

Request element for ListMemberships including the accountID,
membershipARN, membershipID, membershipStatus, and region for each
response.


=head2 NextToken => Str

Optional element.


=head2 _request_id => Str


=cut

