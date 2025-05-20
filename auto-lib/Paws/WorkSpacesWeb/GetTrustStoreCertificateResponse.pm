
package Paws::WorkSpacesWeb::GetTrustStoreCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::WorkSpacesWeb::Certificate', traits => ['NameInRequest'], request_name => 'certificate');
  has TrustStoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trustStoreArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetTrustStoreCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::WorkSpacesWeb::Certificate>

The certificate of the trust store certificate.


=head2 B<REQUIRED> TrustStoreArn => Str

The ARN of the trust store certificate.


=head2 _request_id => Str


=cut

