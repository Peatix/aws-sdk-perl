
package Paws::IoTManagedIntegrations::CreateProvisioningProfile;
  use Moose;
  has CaCertificate => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisioningType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateProvisioningProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateProvisioningProfile - Arguments for method CreateProvisioningProfile on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningProfile on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateProvisioningProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningProfile.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateProvisioningProfileResponse =
      $api . iotmanagedintegrations->CreateProvisioningProfile(
      ProvisioningType => 'FLEET_PROVISIONING',
      CaCertificate    => 'MyCaCertificate',              # OPTIONAL
      ClientToken      => 'MyClientToken',                # OPTIONAL
      Name             => 'MyProvisioningProfileName',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn              = $CreateProvisioningProfileResponse->Arn;
    my $ClaimCertificate = $CreateProvisioningProfileResponse->ClaimCertificate;
    my $ClaimCertificatePrivateKey =
      $CreateProvisioningProfileResponse->ClaimCertificatePrivateKey;
    my $Id               = $CreateProvisioningProfileResponse->Id;
    my $Name             = $CreateProvisioningProfileResponse->Name;
    my $ProvisioningType = $CreateProvisioningProfileResponse->ProvisioningType;

# Returns a L<Paws::IoTManagedIntegrations::CreateProvisioningProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateProvisioningProfile>

=head1 ATTRIBUTES


=head2 CaCertificate => Str

The id of the certificate authority (CA) certificate.



=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 Name => Str

The name of the provisioning template.



=head2 B<REQUIRED> ProvisioningType => Str

The type of provisioning workflow the device uses for onboarding to IoT
managed integrations.

Valid values are: C<"FLEET_PROVISIONING">, C<"JITR">

=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the provisioning
profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningProfile in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

