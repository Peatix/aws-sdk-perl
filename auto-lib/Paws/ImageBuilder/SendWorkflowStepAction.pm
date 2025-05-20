
package Paws::ImageBuilder::SendWorkflowStepAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has StepExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendWorkflowStepAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/SendWorkflowStepAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::SendWorkflowStepActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::SendWorkflowStepAction - Arguments for method SendWorkflowStepAction on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendWorkflowStepAction on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method SendWorkflowStepAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendWorkflowStepAction.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $SendWorkflowStepActionResponse = $imagebuilder->SendWorkflowStepAction(
      Action               => 'RESUME',
      ClientToken          => 'MyClientToken',
      ImageBuildVersionArn => 'MyImageBuildVersionArn',
      StepExecutionId      => 'MyWorkflowStepExecutionId',
      Reason               => 'MyNonEmptyString',            # OPTIONAL
    );

    # Results:
    my $ClientToken = $SendWorkflowStepActionResponse->ClientToken;
    my $ImageBuildVersionArn =
      $SendWorkflowStepActionResponse->ImageBuildVersionArn;
    my $StepExecutionId = $SendWorkflowStepActionResponse->StepExecutionId;

    # Returns a L<Paws::ImageBuilder::SendWorkflowStepActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/SendWorkflowStepAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action for the image creation process to take while a workflow
C<WaitForAction> step waits for an asynchronous action to complete.

Valid values are: C<"RESUME">, C<"STOP">

=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 B<REQUIRED> ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image build version to send
action for.



=head2 Reason => Str

The reason why this action is sent.



=head2 B<REQUIRED> StepExecutionId => Str

Uniquely identifies the workflow step that sent the step action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendWorkflowStepAction in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

