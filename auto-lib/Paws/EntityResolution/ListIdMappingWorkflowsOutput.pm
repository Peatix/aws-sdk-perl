
package Paws::EntityResolution::ListIdMappingWorkflowsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingWorkflowSummary]', traits => ['NameInRequest'], request_name => 'workflowSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListIdMappingWorkflowsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 WorkflowSummaries => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowSummary>]

A list of C<IdMappingWorkflowSummary> objects.


=head2 _request_id => Str


=cut

