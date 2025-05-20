
package Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse;
  use Moose;
  has JobDefinitionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringJobDefinitionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionSummaries => ArrayRef[L<Paws::SageMaker::MonitoringJobDefinitionSummary>]

A JSON array in which each element is a summary for a explainability
bias jobs.


=head2 NextToken => Str

The token returned if the response is truncated. To retrieve the next
set of job executions, use it in the next request.


=head2 _request_id => Str


=cut

1;