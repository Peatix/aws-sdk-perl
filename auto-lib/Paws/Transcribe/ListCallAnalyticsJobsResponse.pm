
package Paws::Transcribe::ListCallAnalyticsJobsResponse;
  use Moose;
  has CallAnalyticsJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::CallAnalyticsJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListCallAnalyticsJobsResponse

=head1 ATTRIBUTES


=head2 CallAnalyticsJobSummaries => ArrayRef[L<Paws::Transcribe::CallAnalyticsJobSummary>]

Provides a summary of information about each result.


=head2 NextToken => Str

If C<NextToken> is present in your response, it indicates that not all
results are displayed. To view the next set of results, copy the string
associated with the C<NextToken> parameter in your results output, then
run your request again including C<NextToken> with the value of the
copied string. Repeat as needed to view all your results.


=head2 Status => Str

Lists all Call Analytics jobs that have the status specified in your
request. Jobs are ordered by creation date, with the newest job first.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;