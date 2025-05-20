
package Paws::Account::AcceptPrimaryEmailUpdateResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::AcceptPrimaryEmailUpdateResponse

=head1 ATTRIBUTES


=head2 Status => Str

Retrieves the status of the accepted primary email update request.

Valid values are: C<"PENDING">, C<"ACCEPTED">
=head2 _request_id => Str


=cut

