
package Paws::CognitoIdp::GetSigningCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetSigningCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The x.509 certificate that signs SAML 2.0 authentication requests for
your user pool.


=head2 _request_id => Str


=cut

1;