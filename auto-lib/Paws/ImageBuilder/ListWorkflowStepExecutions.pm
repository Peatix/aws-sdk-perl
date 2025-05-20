
package Paws::ImageBuilder::ListWorkflowStepExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowStepExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListWorkflowStepExecutions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListWorkflowStepExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflowStepExecutions - Arguments for method ListWorkflowStepExecutions on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflowStepExecutions on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListWorkflowStepExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflowStepExecutions.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListWorkflowStepExecutionsResponse =
      $imagebuilder->ListWorkflowStepExecutions(
      WorkflowExecutionId => 'MyWorkflowExecutionId',
      MaxResults          => 1,                         # OPTIONAL
      NextToken           => 'MyPaginationToken',       # OPTIONAL
      );

    # Results:
    my $ImageBuildVersionArn =
      $ListWorkflowStepExecutionsResponse->ImageBuildVersionArn;
    my $Message   = $ListWorkflowStepExecutionsResponse->Message;
    my $NextToken = $ListWorkflowStepExecutionsResponse->NextToken;
    my $RequestId = $ListWorkflowStepExecutionsResponse->RequestId;
    my $Steps     = $ListWorkflowStepExecutionsResponse->Steps;
    my $WorkflowBuildVersionArn =
      $ListWorkflowStepExecutionsResponse->WorkflowBuildVersionArn;
    my $WorkflowExecutionId =
      $ListWorkflowStepExecutionsResponse->WorkflowExecutionId;

   # Returns a L<Paws::ImageBuilder::ListWorkflowStepExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListWorkflowStepExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.



=head2 B<REQUIRED> WorkflowExecutionId => Str

The unique identifier that Image Builder assigned to keep track of
runtime details when it ran the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflowStepExecutions in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

