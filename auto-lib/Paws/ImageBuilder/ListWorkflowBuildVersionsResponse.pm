
package Paws::ImageBuilder::ListWorkflowBuildVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowSummary]', traits => ['NameInRequest'], request_name => 'workflowSummaryList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflowBuildVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 WorkflowSummaryList => ArrayRef[L<Paws::ImageBuilder::WorkflowSummary>]

A list that contains metadata for the workflow builds that have run for
the workflow resource specified in the request.


=head2 _request_id => Str


=cut

