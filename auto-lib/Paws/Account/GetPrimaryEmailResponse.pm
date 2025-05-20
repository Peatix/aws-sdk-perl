
package Paws::Account::GetPrimaryEmailResponse;
  use Moose;
  has PrimaryEmail => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetPrimaryEmailResponse

=head1 ATTRIBUTES


=head2 PrimaryEmail => Str

Retrieves the primary email address associated with the specified
account.


=head2 _request_id => Str


=cut

