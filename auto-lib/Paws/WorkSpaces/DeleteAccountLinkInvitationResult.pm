
package Paws::WorkSpaces::DeleteAccountLinkInvitationResult;
  use Moose;
  has AccountLink => (is => 'ro', isa => 'Paws::WorkSpaces::AccountLink');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeleteAccountLinkInvitationResult

=head1 ATTRIBUTES


=head2 AccountLink => L<Paws::WorkSpaces::AccountLink>

Information about the account link.


=head2 _request_id => Str


=cut

1;