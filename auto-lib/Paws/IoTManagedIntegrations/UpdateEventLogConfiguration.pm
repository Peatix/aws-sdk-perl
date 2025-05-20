
package Paws::IoTManagedIntegrations::UpdateEventLogConfiguration;
  use Moose;
  has EventLogLevel => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventLogConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-log-configurations/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::UpdateEventLogConfiguration - Arguments for method UpdateEventLogConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventLogConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method UpdateEventLogConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventLogConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    $api . iotmanagedintegrations->UpdateEventLogConfiguration(
      EventLogLevel => 'DEBUG',
      Id            => 'MyLogConfigurationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/UpdateEventLogConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventLogLevel => Str

The log level for the event in terms of severity.

Valid values are: C<"DEBUG">, C<"ERROR">, C<"INFO">, C<"WARN">

=head2 B<REQUIRED> Id => Str

The log configuration id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventLogConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

