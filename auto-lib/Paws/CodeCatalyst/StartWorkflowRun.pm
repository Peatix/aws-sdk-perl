
package Paws::CodeCatalyst::StartWorkflowRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::StartWorkflowRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::StartWorkflowRun - Arguments for method StartWorkflowRun on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartWorkflowRun on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method StartWorkflowRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartWorkflowRun.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $StartWorkflowRunResponse = $codecatalyst->StartWorkflowRun(
      ProjectName => 'MyStartWorkflowRunRequestProjectNameString',
      SpaceName   => 'MyStartWorkflowRunRequestSpaceNameString',
      WorkflowId  => 'MyUuid',
      ClientToken => 'MyStartWorkflowRunRequestClientTokenString',    # OPTIONAL
    );

    # Results:
    my $Id          = $StartWorkflowRunResponse->Id;
    my $ProjectName = $StartWorkflowRunResponse->ProjectName;
    my $SpaceName   = $StartWorkflowRunResponse->SpaceName;
    my $WorkflowId  = $StartWorkflowRunResponse->WorkflowId;

    # Returns a L<Paws::CodeCatalyst::StartWorkflowRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/StartWorkflowRun>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A user-specified idempotency token. Idempotency ensures that an API
request completes only once. With an idempotent request, if the
original request completes successfully, the subsequent retries return
the result from the original successful request and have no additional
effect.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.



=head2 B<REQUIRED> WorkflowId => Str

The system-generated unique ID of the workflow. To retrieve a list of
workflow IDs, use ListWorkflows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartWorkflowRun in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

