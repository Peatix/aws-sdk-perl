
package Paws::FSX::DeleteFileSystemResponse;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');
  has LustreResponse => (is => 'ro', isa => 'Paws::FSX::DeleteFileSystemLustreResponse');
  has OpenZFSResponse => (is => 'ro', isa => 'Paws::FSX::DeleteFileSystemOpenZFSResponse');
  has WindowsResponse => (is => 'ro', isa => 'Paws::FSX::DeleteFileSystemWindowsResponse');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemResponse

=head1 ATTRIBUTES


=head2 FileSystemId => Str

The ID of the file system that's being deleted.


=head2 Lifecycle => Str

The file system lifecycle for the deletion request. If the
C<DeleteFileSystem> operation is successful, this status is
C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">, C<"DELETING">, C<"MISCONFIGURED">, C<"UPDATING">, C<"MISCONFIGURED_UNAVAILABLE">
=head2 LustreResponse => L<Paws::FSX::DeleteFileSystemLustreResponse>




=head2 OpenZFSResponse => L<Paws::FSX::DeleteFileSystemOpenZFSResponse>

The response object for the OpenZFS file system that's being deleted in
the C<DeleteFileSystem> operation.


=head2 WindowsResponse => L<Paws::FSX::DeleteFileSystemWindowsResponse>




=head2 _request_id => Str


=cut

1;