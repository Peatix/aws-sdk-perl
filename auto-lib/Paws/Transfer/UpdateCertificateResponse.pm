
package Paws::Transfer::UpdateCertificateResponse;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

Returns the identifier of the certificate object that you are updating.


=head2 _request_id => Str


=cut

1;