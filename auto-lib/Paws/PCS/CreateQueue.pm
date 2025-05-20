
package Paws::PCS::CreateQueue;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);
  has ComputeNodeGroupConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::PCS::ComputeNodeGroupConfiguration]', traits => ['NameInRequest'], request_name => 'computeNodeGroupConfigurations' );
  has QueueName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueName' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PCS::RequestTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::CreateQueueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::CreateQueue - Arguments for method CreateQueue on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $CreateQueueResponse = $pcs->CreateQueue(
      ClusterIdentifier              => 'MyClusterIdentifier',
      QueueName                      => 'MyQueueName',
      ClientToken                    => 'MySBClientToken',       # OPTIONAL
      ComputeNodeGroupConfigurations => [
        {
          ComputeNodeGroupId => 'MyString',                      # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Queue = $CreateQueueResponse->Queue;

    # Returns a L<Paws::PCS::CreateQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/CreateQueue>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, the subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect. If you don't specify a client token,
the CLI and SDK automatically generate 1 for you.



=head2 B<REQUIRED> ClusterIdentifier => Str

The name or ID of the cluster for which to create a queue.



=head2 ComputeNodeGroupConfigurations => ArrayRef[L<Paws::PCS::ComputeNodeGroupConfiguration>]

The list of compute node group configurations to associate with the
queue. Queues assign jobs to associated compute node groups.



=head2 B<REQUIRED> QueueName => Str

A name to identify the queue.



=head2 Tags => L<Paws::PCS::RequestTagMap>

1 or more tags added to the resource. Each tag consists of a tag key
and tag value. The tag value is optional and can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

