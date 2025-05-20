
package Paws::Kafka::CreateReplicator;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KafkaClusters => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::KafkaCluster]', traits => ['NameInRequest'], request_name => 'kafkaClusters', required => 1);
  has ReplicationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ReplicationInfo]', traits => ['NameInRequest'], request_name => 'replicationInfoList', required => 1);
  has ReplicatorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorName', required => 1);
  has ServiceExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceExecutionRoleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replication/v1/replicators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::CreateReplicatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateReplicator - Arguments for method CreateReplicator on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicator on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateReplicator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicator.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateReplicatorResponse = $kafka->CreateReplicator(
      KafkaClusters => [
        {
          AmazonMskCluster => {
            MskClusterArn => 'My__string',

          },
          VpcConfig => {
            SubnetIds        => [ 'My__string', ... ],
            SecurityGroupIds => [ 'My__string', ... ],
          },

        },
        ...
      ],
      ReplicationInfoList => [
        {
          ConsumerGroupReplication => {
            ConsumerGroupsToReplicate => [
              'My__stringMax256', ...    # max: 256
            ],
            ConsumerGroupsToExclude => [
              'My__stringMax256', ...    # max: 256
            ],
            DetectAndCopyNewConsumerGroups  => 1,    # OPTIONAL
            SynchroniseConsumerGroupOffsets => 1,    # OPTIONAL
          },
          SourceKafkaClusterArn => 'My__string',
          TargetCompressionType =>
            'NONE',    # values: NONE, GZIP, SNAPPY, LZ4, ZSTD
          TargetKafkaClusterArn => 'My__string',
          TopicReplication      => {
            TopicsToReplicate => [
              'My__stringMax249', ...    # max: 249
            ],
            CopyAccessControlListsForTopics => 1,    # OPTIONAL
            CopyTopicConfigurations         => 1,    # OPTIONAL
            DetectAndCopyNewTopics          => 1,    # OPTIONAL
            StartingPosition                => {
              Type => 'LATEST',    # values: LATEST, EARLIEST; OPTIONAL
            },    # OPTIONAL
            TopicNameConfiguration => {
              Type => 'PREFIXED_WITH_SOURCE_CLUSTER_ALIAS'
              , # values: PREFIXED_WITH_SOURCE_CLUSTER_ALIAS, IDENTICAL; OPTIONAL
            },    # OPTIONAL
            TopicsToExclude => [
              'My__stringMax249', ...    # max: 249
            ],
          },

        },
        ...
      ],
      ReplicatorName          => 'My__stringMin1Max128Pattern09AZaZ09AZaZ0',
      ServiceExecutionRoleArn => 'My__string',
      Description             => 'My__stringMax1024',                 # OPTIONAL
      Tags                    => { 'My__string' => 'My__string', },   # OPTIONAL
    );

    # Results:
    my $ReplicatorArn   = $CreateReplicatorResponse->ReplicatorArn;
    my $ReplicatorName  = $CreateReplicatorResponse->ReplicatorName;
    my $ReplicatorState = $CreateReplicatorResponse->ReplicatorState;

    # Returns a L<Paws::Kafka::CreateReplicatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateReplicator>

=head1 ATTRIBUTES


=head2 Description => Str

A summary description of the replicator.



=head2 B<REQUIRED> KafkaClusters => ArrayRef[L<Paws::Kafka::KafkaCluster>]

Kafka Clusters to use in setting up sources / targets for replication.



=head2 B<REQUIRED> ReplicationInfoList => ArrayRef[L<Paws::Kafka::ReplicationInfo>]

A list of replication configurations, where each configuration targets
a given source cluster to target cluster replication flow.



=head2 B<REQUIRED> ReplicatorName => Str

The name of the replicator. Alpha-numeric characters with '-' are
allowed.



=head2 B<REQUIRED> ServiceExecutionRoleArn => Str

The ARN of the IAM role used by the replicator to access resources in
the customer's account (e.g source and target clusters)



=head2 Tags => L<Paws::Kafka::__mapOf__string>

List of tags to attach to created Replicator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicator in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

