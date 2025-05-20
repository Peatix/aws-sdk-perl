
package Paws::BackupSearch::ListSearchJobsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchJobs => (is => 'ro', isa => 'ArrayRef[Paws::BackupSearch::SearchJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchJobsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned backups included in
a search job.

For example, if a request is made to return C<MaxResults> number of
backups, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 B<REQUIRED> SearchJobs => ArrayRef[L<Paws::BackupSearch::SearchJobSummary>]

The search jobs among the list, with details of the returned search
jobs.


=head2 _request_id => Str


=cut

