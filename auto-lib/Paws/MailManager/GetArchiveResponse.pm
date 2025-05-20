
package Paws::MailManager::GetArchiveResponse;
  use Moose;
  has ArchiveArn => (is => 'ro', isa => 'Str', required => 1);
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);
  has ArchiveState => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has Retention => (is => 'ro', isa => 'Paws::MailManager::ArchiveRetention', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveArn => Str

The Amazon Resource Name (ARN) of the archive.


=head2 B<REQUIRED> ArchiveId => Str

The unique identifier of the archive.


=head2 B<REQUIRED> ArchiveName => Str

The unique name assigned to the archive.


=head2 B<REQUIRED> ArchiveState => Str

The current state of the archive:

=over

=item *

C<ACTIVE> E<ndash> The archive is ready and available for use.

=item *

C<PENDING_DELETION> E<ndash> The archive has been marked for deletion
and will be permanently deleted in 30 days. No further modifications
can be made in this state.

=back


Valid values are: C<"ACTIVE">, C<"PENDING_DELETION">
=head2 CreatedTimestamp => Str

The timestamp of when the archive was created.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key used to encrypt the
archive.


=head2 LastUpdatedTimestamp => Str

The timestamp of when the archive was modified.


=head2 B<REQUIRED> Retention => L<Paws::MailManager::ArchiveRetention>

The retention period for emails in this archive.


=head2 _request_id => Str


=cut

1;