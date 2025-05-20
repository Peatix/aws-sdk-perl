
package Paws::Kafka::UpdateReplicationInfo;
  use Moose;
  has ConsumerGroupReplication => (is => 'ro', isa => 'Paws::Kafka::ConsumerGroupReplicationUpdate', traits => ['NameInRequest'], request_name => 'consumerGroupReplication');
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicatorArn', required => 1);
  has SourceKafkaClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceKafkaClusterArn', required => 1);
  has TargetKafkaClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetKafkaClusterArn', required => 1);
  has TopicReplication => (is => 'ro', isa => 'Paws::Kafka::TopicReplicationUpdate', traits => ['NameInRequest'], request_name => 'topicReplication');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReplicationInfo');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replication/v1/replicators/{replicatorArn}/replication-info');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateReplicationInfoResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateReplicationInfo - Arguments for method UpdateReplicationInfo on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationInfo on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateReplicationInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationInfo.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateReplicationInfoResponse = $kafka->UpdateReplicationInfo(
      CurrentVersion           => 'My__string',
      ReplicatorArn            => 'My__string',
      SourceKafkaClusterArn    => 'My__string',
      TargetKafkaClusterArn    => 'My__string',
      ConsumerGroupReplication => {
        ConsumerGroupsToExclude => [
          'My__stringMax256', ...    # max: 256
        ],
        ConsumerGroupsToReplicate => [
          'My__stringMax256', ...    # max: 256
        ],
        DetectAndCopyNewConsumerGroups  => 1,
        SynchroniseConsumerGroupOffsets => 1,

      },    # OPTIONAL
      TopicReplication => {
        CopyAccessControlListsForTopics => 1,
        CopyTopicConfigurations         => 1,
        DetectAndCopyNewTopics          => 1,
        TopicsToExclude                 => [
          'My__stringMax249', ...    # max: 249
        ],
        TopicsToReplicate => [
          'My__stringMax249', ...    # max: 249
        ],

      },    # OPTIONAL
    );

    # Results:
    my $ReplicatorArn   = $UpdateReplicationInfoResponse->ReplicatorArn;
    my $ReplicatorState = $UpdateReplicationInfoResponse->ReplicatorState;

    # Returns a L<Paws::Kafka::UpdateReplicationInfoResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateReplicationInfo>

=head1 ATTRIBUTES


=head2 ConsumerGroupReplication => L<Paws::Kafka::ConsumerGroupReplicationUpdate>

Updated consumer group replication information.



=head2 B<REQUIRED> CurrentVersion => Str

Current replicator version.



=head2 B<REQUIRED> ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator to be updated.



=head2 B<REQUIRED> SourceKafkaClusterArn => Str

The ARN of the source Kafka cluster.



=head2 B<REQUIRED> TargetKafkaClusterArn => Str

The ARN of the target Kafka cluster.



=head2 TopicReplication => L<Paws::Kafka::TopicReplicationUpdate>

Updated topic replication information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationInfo in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

