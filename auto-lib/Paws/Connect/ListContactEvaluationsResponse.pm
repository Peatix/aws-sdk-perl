
package Paws::Connect::ListContactEvaluationsResponse;
  use Moose;
  has EvaluationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EvaluationSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactEvaluationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationSummaryList => ArrayRef[L<Paws::Connect::EvaluationSummary>]

Provides details about a list of contact evaluations belonging to an
instance.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.

This is always returned as null in the response.


=head2 _request_id => Str


=cut

