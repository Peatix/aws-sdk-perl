
package Paws::Connect::ListEvaluationFormVersionsResponse;
  use Moose;
  has EvaluationFormVersionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EvaluationFormVersionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListEvaluationFormVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationFormVersionSummaryList => ArrayRef[L<Paws::Connect::EvaluationFormVersionSummary>]

Provides details about a list of evaluation forms belonging to an
instance.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

