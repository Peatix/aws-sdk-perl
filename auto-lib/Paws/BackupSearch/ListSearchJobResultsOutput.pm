
package Paws::BackupSearch::ListSearchJobResultsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::BackupSearch::ResultItem]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchJobResultsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of search job results.

For example, if a request is made to return C<MaxResults> number of
backups, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::BackupSearch::ResultItem>]

The results consist of either EBSResultItem or S3ResultItem.


=head2 _request_id => Str


=cut

