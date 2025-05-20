
package Paws::IoTManagedIntegrations::StartDeviceDiscovery;
  use Moose;
  has AuthenticationMaterial => (is => 'ro', isa => 'Str');
  has AuthenticationMaterialType => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectorAssociationIdentifier => (is => 'ro', isa => 'Str');
  has ControllerIdentifier => (is => 'ro', isa => 'Str');
  has DiscoveryType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDeviceDiscovery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/device-discoveries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::StartDeviceDiscoveryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::StartDeviceDiscovery - Arguments for method StartDeviceDiscovery on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDeviceDiscovery on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method StartDeviceDiscovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDeviceDiscovery.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $StartDeviceDiscoveryResponse =
      $api . iotmanagedintegrations->StartDeviceDiscovery(
      DiscoveryType              => 'ZWAVE',
      AuthenticationMaterial     => 'MyDiscoveryAuthMaterialString',  # OPTIONAL
      AuthenticationMaterialType => 'ZWAVE_INSTALL_CODE',             # OPTIONAL
      ClientToken                => 'MyClientToken',                  # OPTIONAL
      ConnectorAssociationIdentifier => 'MyConnectorAssociationId',   # OPTIONAL
      ControllerIdentifier           => 'MyManagedThingId',           # OPTIONAL
      Tags                           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Id        = $StartDeviceDiscoveryResponse->Id;
    my $StartedAt = $StartDeviceDiscoveryResponse->StartedAt;

# Returns a L<Paws::IoTManagedIntegrations::StartDeviceDiscoveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/StartDeviceDiscovery>

=head1 ATTRIBUTES


=head2 AuthenticationMaterial => Str

The authentication material required to start the local device
discovery job request.



=head2 AuthenticationMaterialType => Str

The type of authentication material used for device discovery jobs.

Valid values are: C<"ZWAVE_INSTALL_CODE">

=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 ConnectorAssociationIdentifier => Str

The id of the connector association.



=head2 ControllerIdentifier => Str

The id of the end-user's IoT hub.



=head2 B<REQUIRED> DiscoveryType => Str

The discovery type supporting the type of device to be discovered in
the device discovery job request.

Valid values are: C<"ZWAVE">, C<"ZIGBEE">, C<"CLOUD">

=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the device discovery
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDeviceDiscovery in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

