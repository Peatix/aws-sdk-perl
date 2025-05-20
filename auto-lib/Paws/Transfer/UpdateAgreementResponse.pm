
package Paws::Transfer::UpdateAgreementResponse;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateAgreementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

A unique identifier for the agreement. This identifier is returned when
you create an agreement.


=head2 _request_id => Str


=cut

1;