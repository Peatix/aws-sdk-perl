
package Paws::FSX::DeleteBackupResponse;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteBackupResponse

=head1 ATTRIBUTES


=head2 BackupId => Str

The ID of the backup that was deleted.


=head2 Lifecycle => Str

The lifecycle status of the backup. If the C<DeleteBackup> operation is
successful, the status is C<DELETED>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"TRANSFERRING">, C<"DELETED">, C<"FAILED">, C<"PENDING">, C<"COPYING">
=head2 _request_id => Str


=cut

1;