
package Paws::BackupSearch::GetSearchJobOutput;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has CurrentSearchProgress => (is => 'ro', isa => 'Paws::BackupSearch::CurrentSearchProgress');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has ItemFilters => (is => 'ro', isa => 'Paws::BackupSearch::ItemFilters', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has SearchJobArn => (is => 'ro', isa => 'Str', required => 1);
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SearchScope => (is => 'ro', isa => 'Paws::BackupSearch::SearchScope', required => 1);
  has SearchScopeSummary => (is => 'ro', isa => 'Paws::BackupSearch::SearchScopeSummary');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::GetSearchJobOutput

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The date and time that a search job completed, in Unix format and
Coordinated Universal Time (UTC). The value of C<CompletionTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 B<REQUIRED> CreationTime => Str

The date and time that a search job was created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CompletionTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CurrentSearchProgress => L<Paws::BackupSearch::CurrentSearchProgress>

Returns numbers representing BackupsScannedCount, ItemsScanned, and
ItemsMatched.


=head2 EncryptionKeyArn => Str

The encryption key for the specified search job.

Example:
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 B<REQUIRED> ItemFilters => L<Paws::BackupSearch::ItemFilters>

Item Filters represent all input item properties specified when the
search was created.


=head2 Name => Str

Returned name of the specified search job.


=head2 B<REQUIRED> SearchJobArn => Str

The unique string that identifies the Amazon Resource Name (ARN) of the
specified search job.


=head2 B<REQUIRED> SearchJobIdentifier => Str

The unique string that identifies the specified search job.


=head2 B<REQUIRED> SearchScope => L<Paws::BackupSearch::SearchScope>

The search scope is all backup properties input into a search.


=head2 SearchScopeSummary => L<Paws::BackupSearch::SearchScopeSummary>

Returned summary of the specified search job scope, including:

=over

=item *

TotalBackupsToScanCount, the number of recovery points returned by the
search.

=item *

TotalItemsToScanCount, the number of items returned by the search.

=back



=head2 B<REQUIRED> Status => Str

The current status of the specified search job.

A search job may have one of the following statuses: C<RUNNING>;
C<COMPLETED>; C<STOPPED>; C<FAILED>; C<TIMED_OUT>; or C<EXPIRED> .

Valid values are: C<"RUNNING">, C<"COMPLETED">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">
=head2 StatusMessage => Str

A status message will be returned for either a earch job with a status
of C<ERRORED> or a status of C<COMPLETED> jobs with issues.

For example, a message may say that a search contained recovery points
unable to be scanned because of a permissions issue.


=head2 _request_id => Str


=cut

