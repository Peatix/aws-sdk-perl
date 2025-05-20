
package Paws::IoTWireless::UpdateEventConfigurationByResourceTypes;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Paws::IoTWireless::ConnectionStatusResourceTypeEventConfiguration');
  has DeviceRegistrationState => (is => 'ro', isa => 'Paws::IoTWireless::DeviceRegistrationStateResourceTypeEventConfiguration');
  has Join => (is => 'ro', isa => 'Paws::IoTWireless::JoinResourceTypeEventConfiguration');
  has MessageDeliveryStatus => (is => 'ro', isa => 'Paws::IoTWireless::MessageDeliveryStatusResourceTypeEventConfiguration');
  has Proximity => (is => 'ro', isa => 'Paws::IoTWireless::ProximityResourceTypeEventConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventConfigurationByResourceTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-configurations-resource-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateEventConfigurationByResourceTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateEventConfigurationByResourceTypes - Arguments for method UpdateEventConfigurationByResourceTypes on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventConfigurationByResourceTypes on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateEventConfigurationByResourceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventConfigurationByResourceTypes.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateEventConfigurationByResourceTypesResponse =
      $api . iotwireless->UpdateEventConfigurationByResourceTypes(
      ConnectionStatus => {
        LoRaWAN => {
          WirelessGatewayEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DeviceRegistrationState => {
        Sidewalk => {
          WirelessDeviceEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Join => {
        LoRaWAN => {
          WirelessDeviceEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MessageDeliveryStatus => {
        Sidewalk => {
          WirelessDeviceEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Proximity => {
        Sidewalk => {
          WirelessDeviceEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateEventConfigurationByResourceTypes>

=head1 ATTRIBUTES


=head2 ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusResourceTypeEventConfiguration>

Connection status resource type event configuration object for enabling
and disabling wireless gateway topic.



=head2 DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateResourceTypeEventConfiguration>

Device registration state resource type event configuration object for
enabling and disabling wireless gateway topic.



=head2 Join => L<Paws::IoTWireless::JoinResourceTypeEventConfiguration>

Join resource type event configuration object for enabling and
disabling wireless device topic.



=head2 MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusResourceTypeEventConfiguration>

Message delivery status resource type event configuration object for
enabling and disabling wireless device topic.



=head2 Proximity => L<Paws::IoTWireless::ProximityResourceTypeEventConfiguration>

Proximity resource type event configuration object for enabling and
disabling wireless gateway topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventConfigurationByResourceTypes in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

