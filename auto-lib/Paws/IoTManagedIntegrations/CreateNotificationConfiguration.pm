
package Paws::IoTManagedIntegrations::CreateNotificationConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str', required => 1);
  has EventType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateNotificationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateNotificationConfiguration - Arguments for method CreateNotificationConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotificationConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotificationConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateNotificationConfigurationResponse =
      $api . iotmanagedintegrations->CreateNotificationConfiguration(
      DestinationName => 'MyDestinationName',
      EventType       => 'DEVICE_COMMAND',
      ClientToken     => 'MyClientToken',       # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $EventType = $CreateNotificationConfigurationResponse->EventType;

# Returns a L<Paws::IoTManagedIntegrations::CreateNotificationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateNotificationConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 B<REQUIRED> DestinationName => Str

The name of the destination for the notification configuration.



=head2 B<REQUIRED> EventType => Str

The type of event triggering a device notification to the
customer-managed destination.

Valid values are: C<"DEVICE_COMMAND">, C<"DEVICE_COMMAND_REQUEST">, C<"DEVICE_EVENT">, C<"DEVICE_LIFE_CYCLE">, C<"DEVICE_STATE">, C<"DEVICE_OTA">, C<"CONNECTOR_ASSOCIATION">, C<"CONNECTOR_ERROR_REPORT">

=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the notification
configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotificationConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

