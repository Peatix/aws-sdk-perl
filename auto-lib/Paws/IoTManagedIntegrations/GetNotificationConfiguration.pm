
package Paws::IoTManagedIntegrations::GetNotificationConfiguration;
  use Moose;
  has EventType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations/{EventType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetNotificationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetNotificationConfiguration - Arguments for method GetNotificationConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNotificationConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNotificationConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetNotificationConfigurationResponse =
      $api . iotmanagedintegrations->GetNotificationConfiguration(
      EventType => 'DEVICE_COMMAND',

      );

    # Results:
    my $CreatedAt = $GetNotificationConfigurationResponse->CreatedAt;
    my $DestinationName =
      $GetNotificationConfigurationResponse->DestinationName;
    my $EventType = $GetNotificationConfigurationResponse->EventType;
    my $Tags      = $GetNotificationConfigurationResponse->Tags;
    my $UpdatedAt = $GetNotificationConfigurationResponse->UpdatedAt;

# Returns a L<Paws::IoTManagedIntegrations::GetNotificationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetNotificationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventType => Str

The type of event triggering a device notification to the
customer-managed destination.

Valid values are: C<"DEVICE_COMMAND">, C<"DEVICE_COMMAND_REQUEST">, C<"DEVICE_EVENT">, C<"DEVICE_LIFE_CYCLE">, C<"DEVICE_STATE">, C<"DEVICE_OTA">, C<"CONNECTOR_ASSOCIATION">, C<"CONNECTOR_ERROR_REPORT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNotificationConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

