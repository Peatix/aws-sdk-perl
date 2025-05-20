
package Paws::GuardDuty::ListMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Member]', traits => ['NameInRequest'], request_name => 'members');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::GuardDuty::Member>]

A list of members.

The values for C<email> and C<invitedAt> are available only if the
member accounts are added by invitation.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

