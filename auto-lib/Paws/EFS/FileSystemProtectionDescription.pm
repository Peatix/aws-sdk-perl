
package Paws::EFS::FileSystemProtectionDescription;
  use Moose;
  has ReplicationOverwriteProtection => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::FileSystemProtectionDescription

=head1 ATTRIBUTES


=head2 ReplicationOverwriteProtection => Str

The status of the file system's replication overwrite protection.

=over

=item *

C<ENABLED> E<ndash> The file system cannot be used as the destination
file system in a replication configuration. The file system is
writeable. Replication overwrite protection is C<ENABLED> by default.

=item *

C<DISABLED> E<ndash> The file system can be used as the destination
file system in a replication configuration. The file system is
read-only and can only be modified by EFS replication.

=item *

C<REPLICATING> E<ndash> The file system is being used as the
destination file system in a replication configuration. The file system
is read-only and is only modified only by EFS replication.

=back

If the replication configuration is deleted, the file system's
replication overwrite protection is re-enabled, the file system becomes
writeable.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"REPLICATING">
=head2 _request_id => Str


=cut

