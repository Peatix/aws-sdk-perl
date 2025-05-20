
package Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpointResponse;
  use Moose;
  has IdentityProviderArn => (is => 'ro', isa => 'Str');
  has LicenseServerEndpointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpointResponse

=head1 ATTRIBUTES


=head2 IdentityProviderArn => Str

The Amazon Resource Name (ARN) of the identity provider specified in
the request.


=head2 LicenseServerEndpointArn => Str

The ARN of the C<LicenseServerEndpoint> resource.


=head2 _request_id => Str


=cut

