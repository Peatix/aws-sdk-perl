
package Paws::IoTManagedIntegrations::CreateEventLogConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has EventLogLevel => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventLogConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-log-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateEventLogConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateEventLogConfiguration - Arguments for method CreateEventLogConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventLogConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateEventLogConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventLogConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateEventLogConfigurationResponse =
      $api . iotmanagedintegrations->CreateEventLogConfiguration(
      EventLogLevel => 'DEBUG',
      ResourceType  => 'MySmartHomeResourceType',
      ClientToken   => 'MyClientToken',             # OPTIONAL
      ResourceId    => 'MySmartHomeResourceId',     # OPTIONAL
      );

    # Results:
    my $Id = $CreateEventLogConfigurationResponse->Id;

# Returns a L<Paws::IoTManagedIntegrations::CreateEventLogConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateEventLogConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 B<REQUIRED> EventLogLevel => Str

The logging level for the event log configuration.

Valid values are: C<"DEBUG">, C<"ERROR">, C<"INFO">, C<"WARN">

=head2 ResourceId => Str

The identifier of the resource for the event log configuration.



=head2 B<REQUIRED> ResourceType => Str

The type of resource for the event log configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventLogConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

