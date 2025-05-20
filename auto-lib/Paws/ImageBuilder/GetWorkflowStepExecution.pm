
package Paws::ImageBuilder::GetWorkflowStepExecution;
  use Moose;
  has StepExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'stepExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowStepExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetWorkflowStepExecution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetWorkflowStepExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetWorkflowStepExecution - Arguments for method GetWorkflowStepExecution on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowStepExecution on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetWorkflowStepExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowStepExecution.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetWorkflowStepExecutionResponse =
      $imagebuilder->GetWorkflowStepExecution(
      StepExecutionId => 'MyWorkflowStepExecutionId',

      );

    # Results:
    my $Action      = $GetWorkflowStepExecutionResponse->Action;
    my $Description = $GetWorkflowStepExecutionResponse->Description;
    my $EndTime     = $GetWorkflowStepExecutionResponse->EndTime;
    my $ImageBuildVersionArn =
      $GetWorkflowStepExecutionResponse->ImageBuildVersionArn;
    my $Inputs          = $GetWorkflowStepExecutionResponse->Inputs;
    my $Message         = $GetWorkflowStepExecutionResponse->Message;
    my $Name            = $GetWorkflowStepExecutionResponse->Name;
    my $OnFailure       = $GetWorkflowStepExecutionResponse->OnFailure;
    my $Outputs         = $GetWorkflowStepExecutionResponse->Outputs;
    my $RequestId       = $GetWorkflowStepExecutionResponse->RequestId;
    my $RollbackStatus  = $GetWorkflowStepExecutionResponse->RollbackStatus;
    my $StartTime       = $GetWorkflowStepExecutionResponse->StartTime;
    my $Status          = $GetWorkflowStepExecutionResponse->Status;
    my $StepExecutionId = $GetWorkflowStepExecutionResponse->StepExecutionId;
    my $TimeoutSeconds  = $GetWorkflowStepExecutionResponse->TimeoutSeconds;
    my $WorkflowBuildVersionArn =
      $GetWorkflowStepExecutionResponse->WorkflowBuildVersionArn;
    my $WorkflowExecutionId =
      $GetWorkflowStepExecutionResponse->WorkflowExecutionId;

    # Returns a L<Paws::ImageBuilder::GetWorkflowStepExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetWorkflowStepExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StepExecutionId => Str

Use the unique identifier for a specific runtime instance of the
workflow step to get runtime details for that step.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowStepExecution in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

