
package Paws::SageMaker::ListOptimizationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OptimizationJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::OptimizationJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListOptimizationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use in a subsequent request to get the next set of results
following a truncated response.


=head2 B<REQUIRED> OptimizationJobSummaries => ArrayRef[L<Paws::SageMaker::OptimizationJobSummary>]

A list of optimization jobs and their properties that matches any of
the filters you specified in the request.


=head2 _request_id => Str


=cut

1;