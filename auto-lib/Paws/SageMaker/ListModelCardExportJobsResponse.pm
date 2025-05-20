
package Paws::SageMaker::ListModelCardExportJobsResponse;
  use Moose;
  has ModelCardExportJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelCardExportJobSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelCardExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardExportJobSummaries => ArrayRef[L<Paws::SageMaker::ModelCardExportJobSummary>]

The summaries of the listed model card export jobs.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of model card export jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;