
package Paws::KafkaConnect::DescribeConnectorResponse;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Paws::KafkaConnect::CapacityDescription', traits => ['NameInRequest'], request_name => 'capacity');
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorArn');
  has ConnectorConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::ConnectorConfiguration', traits => ['NameInRequest'], request_name => 'connectorConfiguration');
  has ConnectorDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorDescription');
  has ConnectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorName');
  has ConnectorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorState');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion');
  has KafkaCluster => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaClusterDescription', traits => ['NameInRequest'], request_name => 'kafkaCluster');
  has KafkaClusterClientAuthentication => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaClusterClientAuthenticationDescription', traits => ['NameInRequest'], request_name => 'kafkaClusterClientAuthentication');
  has KafkaClusterEncryptionInTransit => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaClusterEncryptionInTransitDescription', traits => ['NameInRequest'], request_name => 'kafkaClusterEncryptionInTransit');
  has KafkaConnectVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kafkaConnectVersion');
  has LogDelivery => (is => 'ro', isa => 'Paws::KafkaConnect::LogDeliveryDescription', traits => ['NameInRequest'], request_name => 'logDelivery');
  has Plugins => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::PluginDescription]', traits => ['NameInRequest'], request_name => 'plugins');
  has ServiceExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceExecutionRoleArn');
  has StateDescription => (is => 'ro', isa => 'Paws::KafkaConnect::StateDescription', traits => ['NameInRequest'], request_name => 'stateDescription');
  has WorkerConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::WorkerConfigurationDescription', traits => ['NameInRequest'], request_name => 'workerConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeConnectorResponse

=head1 ATTRIBUTES


=head2 Capacity => L<Paws::KafkaConnect::CapacityDescription>

Information about the capacity of the connector, whether it is auto
scaled or provisioned.


=head2 ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector.


=head2 ConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfiguration>

A map of keys to values that represent the configuration for the
connector.


=head2 ConnectorDescription => Str

A summary description of the connector.


=head2 ConnectorName => Str

The name of the connector.


=head2 ConnectorState => Str

The state of the connector.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 CreationTime => Str

The time the connector was created.


=head2 CurrentVersion => Str

The current version of the connector.


=head2 KafkaCluster => L<Paws::KafkaConnect::KafkaClusterDescription>

The Apache Kafka cluster that the connector is connected to.


=head2 KafkaClusterClientAuthentication => L<Paws::KafkaConnect::KafkaClusterClientAuthenticationDescription>

The type of client authentication used to connect to the Apache Kafka
cluster. The value is NONE when no client authentication is used.


=head2 KafkaClusterEncryptionInTransit => L<Paws::KafkaConnect::KafkaClusterEncryptionInTransitDescription>

Details of encryption in transit to the Apache Kafka cluster.


=head2 KafkaConnectVersion => Str

The version of Kafka Connect. It has to be compatible with both the
Apache Kafka cluster's version and the plugins.


=head2 LogDelivery => L<Paws::KafkaConnect::LogDeliveryDescription>

Details about delivering logs to Amazon CloudWatch Logs.


=head2 Plugins => ArrayRef[L<Paws::KafkaConnect::PluginDescription>]

Specifies which plugins were used for this connector.


=head2 ServiceExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used by the connector to
access Amazon Web Services resources.


=head2 StateDescription => L<Paws::KafkaConnect::StateDescription>

Details about the state of a connector.


=head2 WorkerConfiguration => L<Paws::KafkaConnect::WorkerConfigurationDescription>

Specifies which worker configuration was used for the connector.


=head2 _request_id => Str


=cut

