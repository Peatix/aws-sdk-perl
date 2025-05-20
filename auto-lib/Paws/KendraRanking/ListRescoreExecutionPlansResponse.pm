
package Paws::KendraRanking::ListRescoreExecutionPlansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::KendraRanking::RescoreExecutionPlanSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::ListRescoreExecutionPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra Intelligent Ranking returns
a pagination token in the response.


=head2 SummaryItems => ArrayRef[L<Paws::KendraRanking::RescoreExecutionPlanSummary>]

An array of summary information for one or more rescore execution
plans.


=head2 _request_id => Str


=cut

1;