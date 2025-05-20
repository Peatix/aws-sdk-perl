
package Paws::KafkaConnect::DescribeConnectorOperationResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorArn');
  has ConnectorOperationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorOperationArn');
  has ConnectorOperationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorOperationState');
  has ConnectorOperationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorOperationType');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ErrorInfo => (is => 'ro', isa => 'Paws::KafkaConnect::StateDescription', traits => ['NameInRequest'], request_name => 'errorInfo');
  has OperationSteps => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::ConnectorOperationStep]', traits => ['NameInRequest'], request_name => 'operationSteps');
  has OriginConnectorConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::ConnectorConfiguration', traits => ['NameInRequest'], request_name => 'originConnectorConfiguration');
  has OriginWorkerSetting => (is => 'ro', isa => 'Paws::KafkaConnect::WorkerSetting', traits => ['NameInRequest'], request_name => 'originWorkerSetting');
  has TargetConnectorConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::ConnectorConfiguration', traits => ['NameInRequest'], request_name => 'targetConnectorConfiguration');
  has TargetWorkerSetting => (is => 'ro', isa => 'Paws::KafkaConnect::WorkerSetting', traits => ['NameInRequest'], request_name => 'targetWorkerSetting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeConnectorOperationResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector.


=head2 ConnectorOperationArn => Str

The Amazon Resource Name (ARN) of the connector operation.


=head2 ConnectorOperationState => Str

The state of the connector operation.

Valid values are: C<"PENDING">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_COMPLETE">, C<"UPDATE_FAILED">, C<"ROLLBACK_IN_PROGRESS">, C<"ROLLBACK_FAILED">, C<"ROLLBACK_COMPLETE">
=head2 ConnectorOperationType => Str

The type of connector operation performed.

Valid values are: C<"UPDATE_WORKER_SETTING">, C<"UPDATE_CONNECTOR_CONFIGURATION">, C<"ISOLATE_CONNECTOR">, C<"RESTORE_CONNECTOR">
=head2 CreationTime => Str

The time when the operation was created.


=head2 EndTime => Str

The time when the operation ended.


=head2 ErrorInfo => L<Paws::KafkaConnect::StateDescription>




=head2 OperationSteps => ArrayRef[L<Paws::KafkaConnect::ConnectorOperationStep>]

The array of operation steps taken.


=head2 OriginConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfiguration>

The origin connector configuration.


=head2 OriginWorkerSetting => L<Paws::KafkaConnect::WorkerSetting>

The origin worker setting.


=head2 TargetConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfiguration>

The target connector configuration.


=head2 TargetWorkerSetting => L<Paws::KafkaConnect::WorkerSetting>

The target worker setting.


=head2 _request_id => Str


=cut

