
package Paws::Transfer::ImportCertificateResponse;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

An array of identifiers for the imported certificates. You use this
identifier for working with profiles and partner profiles.


=head2 _request_id => Str


=cut

1;