
package Paws::Backup::ListBackupJobSummariesOutput;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Str');
  has BackupJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobSummariesOutput

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



=head2 BackupJobSummaries => ArrayRef[L<Paws::Backup::BackupJobSummary>]

The summary information.


=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<MaxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 _request_id => Str


=cut

