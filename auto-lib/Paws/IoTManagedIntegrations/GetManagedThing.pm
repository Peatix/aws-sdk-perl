
package Paws::IoTManagedIntegrations::GetManagedThing;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetManagedThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThing - Arguments for method GetManagedThing on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedThing on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetManagedThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedThing.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetManagedThingResponse =
      $api . iotmanagedintegrations->GetManagedThing(
      Identifier => 'MyManagedThingId',

      );

    # Results:
    my $ActivatedAt         = $GetManagedThingResponse->ActivatedAt;
    my $AdvertisedProductId = $GetManagedThingResponse->AdvertisedProductId;
    my $Arn                 = $GetManagedThingResponse->Arn;
    my $Brand               = $GetManagedThingResponse->Brand;
    my $Classification      = $GetManagedThingResponse->Classification;
    my $ConnectorDeviceId   = $GetManagedThingResponse->ConnectorDeviceId;
    my $ConnectorPolicyId   = $GetManagedThingResponse->ConnectorPolicyId;
    my $CreatedAt           = $GetManagedThingResponse->CreatedAt;
    my $CredentialLockerId  = $GetManagedThingResponse->CredentialLockerId;
    my $DeviceSpecificKey   = $GetManagedThingResponse->DeviceSpecificKey;
    my $HubNetworkMode      = $GetManagedThingResponse->HubNetworkMode;
    my $Id                  = $GetManagedThingResponse->Id;
    my $InternationalArticleNumber =
      $GetManagedThingResponse->InternationalArticleNumber;
    my $MacAddress           = $GetManagedThingResponse->MacAddress;
    my $MetaData             = $GetManagedThingResponse->MetaData;
    my $Model                = $GetManagedThingResponse->Model;
    my $Name                 = $GetManagedThingResponse->Name;
    my $Owner                = $GetManagedThingResponse->Owner;
    my $ParentControllerId   = $GetManagedThingResponse->ParentControllerId;
    my $ProvisioningStatus   = $GetManagedThingResponse->ProvisioningStatus;
    my $Role                 = $GetManagedThingResponse->Role;
    my $SerialNumber         = $GetManagedThingResponse->SerialNumber;
    my $Tags                 = $GetManagedThingResponse->Tags;
    my $UniversalProductCode = $GetManagedThingResponse->UniversalProductCode;
    my $UpdatedAt            = $GetManagedThingResponse->UpdatedAt;

    # Returns a L<Paws::IoTManagedIntegrations::GetManagedThingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetManagedThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The id of the managed thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedThing in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

