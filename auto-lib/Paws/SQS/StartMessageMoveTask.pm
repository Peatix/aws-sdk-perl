
package Paws::SQS::StartMessageMoveTask;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str');
  has MaxNumberOfMessagesPerSecond => (is => 'ro', isa => 'Int');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMessageMoveTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::StartMessageMoveTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::StartMessageMoveTask - Arguments for method StartMessageMoveTask on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMessageMoveTask on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method StartMessageMoveTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMessageMoveTask.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $StartMessageMoveTaskResult = $sqs->StartMessageMoveTask(
      SourceArn                    => 'MyString',
      DestinationArn               => 'MyString',    # OPTIONAL
      MaxNumberOfMessagesPerSecond => 1,             # OPTIONAL
    );

    # Results:
    my $TaskHandle = $StartMessageMoveTaskResult->TaskHandle;

    # Returns a L<Paws::SQS::StartMessageMoveTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/StartMessageMoveTask>

=head1 ATTRIBUTES


=head2 DestinationArn => Str

The ARN of the queue that receives the moved messages. You can use this
field to specify the destination queue where you would like to redrive
messages. If this field is left blank, the messages will be redriven
back to their respective original source queues.



=head2 MaxNumberOfMessagesPerSecond => Int

The number of messages to be moved per second (the message movement
rate). You can use this field to define a fixed message movement rate.
The maximum value for messages per second is 500. If this field is left
blank, the system will optimize the rate based on the queue message
backlog size, which may vary throughout the duration of the message
movement task.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the queue that contains the messages to be moved to another
queue. Currently, only ARNs of dead-letter queues (DLQs) whose sources
are other Amazon SQS queues are accepted. DLQs whose sources are
non-SQS queues, such as Lambda or Amazon SNS topics, are not currently
supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMessageMoveTask in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

