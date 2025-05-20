
package Paws::SageMaker::ListCompilationJobsResponse;
  use Moose;
  has CompilationJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CompilationJobSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCompilationJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobSummaries => ArrayRef[L<Paws::SageMaker::CompilationJobSummary>]

An array of CompilationJobSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CompilationJobSummary.html)
objects, each describing a model compilation job.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker AI returns this
C<NextToken>. To retrieve the next set of model compilation jobs, use
this token in the next request.


=head2 _request_id => Str


=cut

1;