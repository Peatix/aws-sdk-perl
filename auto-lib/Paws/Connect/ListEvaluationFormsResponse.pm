
package Paws::Connect::ListEvaluationFormsResponse;
  use Moose;
  has EvaluationFormSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EvaluationFormSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListEvaluationFormsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationFormSummaryList => ArrayRef[L<Paws::Connect::EvaluationFormSummary>]

Provides details about a list of evaluation forms belonging to an
instance.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

