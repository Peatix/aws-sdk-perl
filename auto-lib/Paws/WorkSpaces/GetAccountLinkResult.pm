
package Paws::WorkSpaces::GetAccountLinkResult;
  use Moose;
  has AccountLink => (is => 'ro', isa => 'Paws::WorkSpaces::AccountLink');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::GetAccountLinkResult

=head1 ATTRIBUTES


=head2 AccountLink => L<Paws::WorkSpaces::AccountLink>

The account link of the account link to retrieve.


=head2 _request_id => Str


=cut

1;