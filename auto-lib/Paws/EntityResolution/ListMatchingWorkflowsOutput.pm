
package Paws::EntityResolution::ListMatchingWorkflowsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::MatchingWorkflowSummary]', traits => ['NameInRequest'], request_name => 'workflowSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListMatchingWorkflowsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 WorkflowSummaries => ArrayRef[L<Paws::EntityResolution::MatchingWorkflowSummary>]

A list of C<MatchingWorkflowSummary> objects, each of which contain the
fields C<WorkflowName>, C<WorkflowArn>, C<CreatedAt>, and C<UpdatedAt>.


=head2 _request_id => Str


=cut

