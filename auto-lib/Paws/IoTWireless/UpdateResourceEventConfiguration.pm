
package Paws::IoTWireless::UpdateResourceEventConfiguration;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Paws::IoTWireless::ConnectionStatusEventConfiguration');
  has DeviceRegistrationState => (is => 'ro', isa => 'Paws::IoTWireless::DeviceRegistrationStateEventConfiguration');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has IdentifierType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identifierType', required => 1);
  has Join => (is => 'ro', isa => 'Paws::IoTWireless::JoinEventConfiguration');
  has MessageDeliveryStatus => (is => 'ro', isa => 'Paws::IoTWireless::MessageDeliveryStatusEventConfiguration');
  has PartnerType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'partnerType');
  has Proximity => (is => 'ro', isa => 'Paws::IoTWireless::ProximityEventConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceEventConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-configurations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateResourceEventConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateResourceEventConfiguration - Arguments for method UpdateResourceEventConfiguration on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceEventConfiguration on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateResourceEventConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceEventConfiguration.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateResourceEventConfigurationResponse =
      $api . iotwireless->UpdateResourceEventConfiguration(
      Identifier       => 'MyIdentifier',
      IdentifierType   => 'PartnerAccountId',
      ConnectionStatus => {
        LoRaWAN => {
          GatewayEuiEventTopic =>
            'Enabled',    # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
        WirelessGatewayIdEventTopic =>
          'Enabled',    # values: Enabled, Disabled; OPTIONAL
      },    # OPTIONAL
      DeviceRegistrationState => {
        Sidewalk => {
          AmazonIdEventTopic => 'Enabled', # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
        WirelessDeviceIdEventTopic =>
          'Enabled',    # values: Enabled, Disabled; OPTIONAL
      },    # OPTIONAL
      Join => {
        LoRaWAN => {
          DevEuiEventTopic => 'Enabled',   # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
        WirelessDeviceIdEventTopic =>
          'Enabled',    # values: Enabled, Disabled; OPTIONAL
      },    # OPTIONAL
      MessageDeliveryStatus => {
        Sidewalk => {
          AmazonIdEventTopic => 'Enabled', # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
        WirelessDeviceIdEventTopic =>
          'Enabled',    # values: Enabled, Disabled; OPTIONAL
      },    # OPTIONAL
      PartnerType => 'Sidewalk',    # OPTIONAL
      Proximity   => {
        Sidewalk => {
          AmazonIdEventTopic => 'Enabled', # values: Enabled, Disabled; OPTIONAL
        },    # OPTIONAL
        WirelessDeviceIdEventTopic =>
          'Enabled',    # values: Enabled, Disabled; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateResourceEventConfiguration>

=head1 ATTRIBUTES


=head2 ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusEventConfiguration>

Event configuration for the connection status event.



=head2 DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateEventConfiguration>

Event configuration for the device registration state event.



=head2 B<REQUIRED> Identifier => Str

Resource identifier to opt in for event messaging.



=head2 B<REQUIRED> IdentifierType => Str

Identifier type of the particular resource identifier for event
configuration.

Valid values are: C<"PartnerAccountId">, C<"DevEui">, C<"FuotaTaskId">, C<"GatewayEui">, C<"WirelessDeviceId">, C<"WirelessGatewayId">

=head2 Join => L<Paws::IoTWireless::JoinEventConfiguration>

Event configuration for the join event.



=head2 MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusEventConfiguration>

Event configuration for the message delivery status event.



=head2 PartnerType => Str

Partner type of the resource if the identifier type is
C<PartnerAccountId>

Valid values are: C<"Sidewalk">

=head2 Proximity => L<Paws::IoTWireless::ProximityEventConfiguration>

Event configuration for the proximity event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceEventConfiguration in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

