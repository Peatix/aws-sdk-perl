
package Paws::IoT::CreateCertificateProviderResponse;
  use Moose;
  has CertificateProviderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateProviderArn');
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateProviderName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCertificateProviderResponse

=head1 ATTRIBUTES


=head2 CertificateProviderArn => Str

The ARN of the certificate provider.


=head2 CertificateProviderName => Str

The name of the certificate provider.


=head2 _request_id => Str


=cut

