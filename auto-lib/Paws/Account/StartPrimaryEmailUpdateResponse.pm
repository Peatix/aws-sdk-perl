
package Paws::Account::StartPrimaryEmailUpdateResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::StartPrimaryEmailUpdateResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the primary email update request.

Valid values are: C<"PENDING">, C<"ACCEPTED">
=head2 _request_id => Str


=cut

