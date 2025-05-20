
package Paws::Kafka::DescribeReplicatorResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion');
  has IsReplicatorReference => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isReplicatorReference');
  has KafkaClusters => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::KafkaClusterDescription]', traits => ['NameInRequest'], request_name => 'kafkaClusters');
  has ReplicationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ReplicationInfoDescription]', traits => ['NameInRequest'], request_name => 'replicationInfoList');
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorArn');
  has ReplicatorDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorDescription');
  has ReplicatorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorName');
  has ReplicatorResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorResourceArn');
  has ReplicatorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorState');
  has ServiceExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceExecutionRoleArn');
  has StateInfo => (is => 'ro', isa => 'Paws::Kafka::ReplicationStateInfo', traits => ['NameInRequest'], request_name => 'stateInfo');
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeReplicatorResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the replicator was created.


=head2 CurrentVersion => Str

The current version number of the replicator.


=head2 IsReplicatorReference => Bool

Whether this resource is a replicator reference.


=head2 KafkaClusters => ArrayRef[L<Paws::Kafka::KafkaClusterDescription>]

Kafka Clusters used in setting up sources / targets for replication.


=head2 ReplicationInfoList => ArrayRef[L<Paws::Kafka::ReplicationInfoDescription>]

A list of replication configurations, where each configuration targets
a given source cluster to target cluster replication flow.


=head2 ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator.


=head2 ReplicatorDescription => Str

The description of the replicator.


=head2 ReplicatorName => Str

The name of the replicator.


=head2 ReplicatorResourceArn => Str

The Amazon Resource Name (ARN) of the replicator resource in the region
where the replicator was created.


=head2 ReplicatorState => Str

State of the replicator.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 ServiceExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used by the replicator
to access resources in the customer's account (e.g source and target
clusters)


=head2 StateInfo => L<Paws::Kafka::ReplicationStateInfo>

Details about the state of the replicator.


=head2 Tags => L<Paws::Kafka::__mapOf__string>

List of tags attached to the Replicator.


=head2 _request_id => Str


=cut

