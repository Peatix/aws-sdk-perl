
package Paws::IoTManagedIntegrations::CreateProvisioningProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ClaimCertificate => (is => 'ro', isa => 'Str');
  has ClaimCertificatePrivateKey => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisioningType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateProvisioningProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the provisioning template used in the
provisioning profile.


=head2 ClaimCertificate => Str

The id of the claim certificate.


=head2 ClaimCertificatePrivateKey => Str

The private key of the claim certificate. This is stored securely on
the device for validating the connection endpoint with IoT managed
integrations using the public key.


=head2 Id => Str

The identifier of the provisioning profile.


=head2 Name => Str

The name of the provisioning template.


=head2 ProvisioningType => Str

The type of provisioning workflow the device uses for onboarding to IoT
managed integrations.

Valid values are: C<"FLEET_PROVISIONING">, C<"JITR">
=head2 _request_id => Str


=cut

