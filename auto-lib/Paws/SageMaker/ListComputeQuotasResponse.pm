
package Paws::SageMaker::ListComputeQuotasResponse;
  use Moose;
  has ComputeQuotaSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ComputeQuotaSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListComputeQuotasResponse

=head1 ATTRIBUTES


=head2 ComputeQuotaSummaries => ArrayRef[L<Paws::SageMaker::ComputeQuotaSummary>]

Summaries of the compute allocation definitions.


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;