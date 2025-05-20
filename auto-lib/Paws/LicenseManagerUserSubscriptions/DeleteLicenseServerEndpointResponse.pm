
package Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpointResponse;
  use Moose;
  has LicenseServerEndpoint => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpointResponse

=head1 ATTRIBUTES


=head2 LicenseServerEndpoint => L<Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint>

Shows details from the C<LicenseServerEndpoint> resource that was
deleted.


=head2 _request_id => Str


=cut

