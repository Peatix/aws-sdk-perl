
package Paws::IoTManagedIntegrations::GetProvisioningProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ClaimCertificate => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisioningType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetProvisioningProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the provisioning template used in the
provisioning profile.


=head2 ClaimCertificate => Str

The id of the claim certificate.


=head2 Id => Str

The provisioning profile id..


=head2 Name => Str

The name of the provisioning template.


=head2 ProvisioningType => Str

The type of provisioning workflow the device uses for onboarding to IoT
managed integrations.

Valid values are: C<"FLEET_PROVISIONING">, C<"JITR">
=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the provisioning
profile.


=head2 _request_id => Str


=cut

