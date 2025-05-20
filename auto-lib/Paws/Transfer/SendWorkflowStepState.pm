
package Paws::Transfer::SendWorkflowStepState;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendWorkflowStepState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::SendWorkflowStepStateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::SendWorkflowStepState - Arguments for method SendWorkflowStepState on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendWorkflowStepState on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method SendWorkflowStepState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendWorkflowStepState.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $SendWorkflowStepStateResponse = $transfer->SendWorkflowStepState(
      ExecutionId => 'MyExecutionId',
      Status      => 'SUCCESS',
      Token       => 'MyCallbackToken',
      WorkflowId  => 'MyWorkflowId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/SendWorkflowStepState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionId => Str

A unique identifier for the execution of a workflow.



=head2 B<REQUIRED> Status => Str

Indicates whether the specified step succeeded or failed.

Valid values are: C<"SUCCESS">, C<"FAILURE">

=head2 B<REQUIRED> Token => Str

Used to distinguish between multiple callbacks for multiple Lambda
steps within the same execution.



=head2 B<REQUIRED> WorkflowId => Str

A unique identifier for the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendWorkflowStepState in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

