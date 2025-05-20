
package Paws::KafkaConnect::UpdateConnector;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Paws::KafkaConnect::CapacityUpdate', traits => ['NameInRequest'], request_name => 'capacity');
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectorArn', required => 1);
  has ConnectorConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::ConnectorConfigurationUpdate', traits => ['NameInRequest'], request_name => 'connectorConfiguration');
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'currentVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors/{connectorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::UpdateConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::UpdateConnector - Arguments for method UpdateConnector on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnector on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method UpdateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnector.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $UpdateConnectorResponse = $kafkaconnect->UpdateConnector(
      ConnectorArn   => 'My__string',
      CurrentVersion => 'My__string',
      Capacity       => {
        AutoScaling => {
          MaxWorkerCount => 1,
          McuCount       => 1,    # min: 1, max: 8
          MinWorkerCount => 1,
          ScaleInPolicy  => {
            CpuUtilizationPercentage => 1,    # min: 1, max: 100

          },
          ScaleOutPolicy => {
            CpuUtilizationPercentage => 1,    # min: 1, max: 100

          },

        },    # OPTIONAL
        ProvisionedCapacity => {
          McuCount    => 1,    # min: 1, max: 8
          WorkerCount => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      ConnectorConfiguration => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $ConnectorArn          = $UpdateConnectorResponse->ConnectorArn;
    my $ConnectorOperationArn = $UpdateConnectorResponse->ConnectorOperationArn;
    my $ConnectorState        = $UpdateConnectorResponse->ConnectorState;

    # Returns a L<Paws::KafkaConnect::UpdateConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/UpdateConnector>

=head1 ATTRIBUTES


=head2 Capacity => L<Paws::KafkaConnect::CapacityUpdate>

The target capacity.



=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector that you want to
update.



=head2 ConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfigurationUpdate>

A map of keys to values that represent the configuration for the
connector.



=head2 B<REQUIRED> CurrentVersion => Str

The current version of the connector that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnector in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

