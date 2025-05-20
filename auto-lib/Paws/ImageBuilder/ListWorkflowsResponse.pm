
package Paws::ImageBuilder::ListWorkflowsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowVersionList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowVersion]', traits => ['NameInRequest'], request_name => 'workflowVersionList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflowsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 WorkflowVersionList => ArrayRef[L<Paws::ImageBuilder::WorkflowVersion>]

A list of workflow build versions that match the request criteria.


=head2 _request_id => Str


=cut

