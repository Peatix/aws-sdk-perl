
package Paws::ImageBuilder::GetWorkflowExecution;
  use Moose;
  has WorkflowExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetWorkflowExecution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetWorkflowExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetWorkflowExecution - Arguments for method GetWorkflowExecution on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowExecution on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetWorkflowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowExecution.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetWorkflowExecutionResponse = $imagebuilder->GetWorkflowExecution(
      WorkflowExecutionId => 'MyWorkflowExecutionId',

    );

    # Results:
    my $EndTime = $GetWorkflowExecutionResponse->EndTime;
    my $ImageBuildVersionArn =
      $GetWorkflowExecutionResponse->ImageBuildVersionArn;
    my $Message           = $GetWorkflowExecutionResponse->Message;
    my $ParallelGroup     = $GetWorkflowExecutionResponse->ParallelGroup;
    my $RequestId         = $GetWorkflowExecutionResponse->RequestId;
    my $StartTime         = $GetWorkflowExecutionResponse->StartTime;
    my $Status            = $GetWorkflowExecutionResponse->Status;
    my $TotalStepCount    = $GetWorkflowExecutionResponse->TotalStepCount;
    my $TotalStepsFailed  = $GetWorkflowExecutionResponse->TotalStepsFailed;
    my $TotalStepsSkipped = $GetWorkflowExecutionResponse->TotalStepsSkipped;
    my $TotalStepsSucceeded =
      $GetWorkflowExecutionResponse->TotalStepsSucceeded;
    my $Type = $GetWorkflowExecutionResponse->Type;
    my $WorkflowBuildVersionArn =
      $GetWorkflowExecutionResponse->WorkflowBuildVersionArn;
    my $WorkflowExecutionId =
      $GetWorkflowExecutionResponse->WorkflowExecutionId;

    # Returns a L<Paws::ImageBuilder::GetWorkflowExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetWorkflowExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkflowExecutionId => Str

Use the unique identifier for a runtime instance of the workflow to get
runtime details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowExecution in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

