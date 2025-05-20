
package Paws::SQS::CancelMessageMoveTask;
  use Moose;
  has TaskHandle => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelMessageMoveTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::CancelMessageMoveTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::CancelMessageMoveTask - Arguments for method CancelMessageMoveTask on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMessageMoveTask on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method CancelMessageMoveTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMessageMoveTask.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $CancelMessageMoveTaskResult = $sqs->CancelMessageMoveTask(
      TaskHandle => 'MyString',

    );

    # Results:
    my $ApproximateNumberOfMessagesMoved =
      $CancelMessageMoveTaskResult->ApproximateNumberOfMessagesMoved;

    # Returns a L<Paws::SQS::CancelMessageMoveTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/CancelMessageMoveTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskHandle => Str

An identifier associated with a message movement task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMessageMoveTask in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

