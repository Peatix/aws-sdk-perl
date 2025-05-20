
package Paws::PCS::DeleteQueue;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);
  has QueueIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::DeleteQueueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::DeleteQueue - Arguments for method DeleteQueue on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQueue on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method DeleteQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQueue.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $DeleteQueueResponse = $pcs->DeleteQueue(
      ClusterIdentifier => 'MyClusterIdentifier',
      QueueIdentifier   => 'MyQueueIdentifier',
      ClientToken       => 'MySBClientToken',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/DeleteQueue>

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

The name or ID of the cluster of the queue.



=head2 B<REQUIRED> QueueIdentifier => Str

The name or ID of the queue to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQueue in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

