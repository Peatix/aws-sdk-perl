
package Paws::Backup::ListCopyJobSummariesOutput;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Str');
  has CopyJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Backup::CopyJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListCopyJobSummariesOutput

=head1 ATTRIBUTES


=head2 AggregationPeriod => Str

The period for the returned results.

=over

=item *

C<ONE_DAY> - The daily job count for the prior 14 days.

=item *

C<SEVEN_DAYS> - The aggregated job count for the prior 7 days.

=item *

C<FOURTEEN_DAYS> - The aggregated job count for prior 14 days.

=back



=head2 CopyJobSummaries => ArrayRef[L<Paws::Backup::CopyJobSummary>]

This return shows a summary that contains Region, Account, State,
ResourceType, MessageCategory, StartTime, EndTime, and Count of
included jobs.


=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<MaxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 _request_id => Str


=cut

