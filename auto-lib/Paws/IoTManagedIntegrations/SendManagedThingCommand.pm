
package Paws::IoTManagedIntegrations::SendManagedThingCommand;
  use Moose;
  has ConnectorAssociationId => (is => 'ro', isa => 'Str');
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::CommandEndpoint]', required => 1);
  has ManagedThingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ManagedThingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendManagedThingCommand');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things-command/{ManagedThingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::SendManagedThingCommandResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::SendManagedThingCommand - Arguments for method SendManagedThingCommand on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendManagedThingCommand on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method SendManagedThingCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendManagedThingCommand.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $SendManagedThingCommandResponse =
      $api . iotmanagedintegrations->SendManagedThingCommand(
      Endpoints => [
        {
          Capabilities => [
            {
              Actions => [
                {
                  Name          => 'MyCapabilityActionName',
                  ActionTraceId =>
                    'MyActionTraceId',    # min: 16, max: 20; OPTIONAL
                  Parameters => {

                  },                      # OPTIONAL
                  Ref => 'MyActionReference',    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              Id      => 'MySchemaVersionedId',    # min: 1, max: 128
              Name    => 'MyCapabilityName',       # min: 1, max: 128
              Version => 'MyCapabilityVersion',    # min: 1, max: 64

            },
            ...
          ],    # min: 1, max: 5
          EndpointId => 'MyEndpointId',    # min: 1, max: 64

        },
        ...
      ],
      ManagedThingId         => 'MyManagedThingId',
      ConnectorAssociationId => 'MyConnectorAssociationId',    # OPTIONAL
      );

    # Results:
    my $TraceId = $SendManagedThingCommandResponse->TraceId;

# Returns a L<Paws::IoTManagedIntegrations::SendManagedThingCommandResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/SendManagedThingCommand>

=head1 ATTRIBUTES


=head2 ConnectorAssociationId => Str

The ID tracking the current discovery process for one connector
association.



=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::IoTManagedIntegrations::CommandEndpoint>]

The device endpoint.



=head2 B<REQUIRED> ManagedThingId => Str

The id of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendManagedThingCommand in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

