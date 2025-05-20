
package Paws::DevOpsGuru::SearchOrganizationInsightsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProactiveInsights => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ProactiveInsightSummary]');
  has ReactiveInsights => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ReactiveInsightSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::SearchOrganizationInsightsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 ProactiveInsights => ArrayRef[L<Paws::DevOpsGuru::ProactiveInsightSummary>]

An integer that specifies the number of open proactive insights in your
Amazon Web Services account.


=head2 ReactiveInsights => ArrayRef[L<Paws::DevOpsGuru::ReactiveInsightSummary>]

An integer that specifies the number of open reactive insights in your
Amazon Web Services account.


=head2 _request_id => Str


=cut

