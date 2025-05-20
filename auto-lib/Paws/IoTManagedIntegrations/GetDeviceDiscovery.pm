
package Paws::IoTManagedIntegrations::GetDeviceDiscovery;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceDiscovery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/device-discoveries/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetDeviceDiscoveryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetDeviceDiscovery - Arguments for method GetDeviceDiscovery on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceDiscovery on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetDeviceDiscovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceDiscovery.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetDeviceDiscoveryResponse =
      $api . iotmanagedintegrations->GetDeviceDiscovery(
      Identifier => 'MyDeviceDiscoveryId',

      );

    # Results:
    my $Arn = $GetDeviceDiscoveryResponse->Arn;
    my $ConnectorAssociationId =
      $GetDeviceDiscoveryResponse->ConnectorAssociationId;
    my $ControllerId  = $GetDeviceDiscoveryResponse->ControllerId;
    my $DiscoveryType = $GetDeviceDiscoveryResponse->DiscoveryType;
    my $FinishedAt    = $GetDeviceDiscoveryResponse->FinishedAt;
    my $Id            = $GetDeviceDiscoveryResponse->Id;
    my $StartedAt     = $GetDeviceDiscoveryResponse->StartedAt;
    my $Status        = $GetDeviceDiscoveryResponse->Status;
    my $Tags          = $GetDeviceDiscoveryResponse->Tags;

 # Returns a L<Paws::IoTManagedIntegrations::GetDeviceDiscoveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetDeviceDiscovery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The id of the device discovery job request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceDiscovery in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

