
package Paws::Deadline::GetStorageProfileForQueueResponse;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FileSystemLocations => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::FileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocations');
  has OsFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osFamily', required => 1);
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageProfileId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetStorageProfileForQueueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

The display name of the storage profile connected to a queue.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 FileSystemLocations => ArrayRef[L<Paws::Deadline::FileSystemLocation>]

The location of the files for the storage profile within the queue.


=head2 B<REQUIRED> OsFamily => Str

The operating system of the storage profile in the queue.

Valid values are: C<"WINDOWS">, C<"LINUX">, C<"MACOS">
=head2 B<REQUIRED> StorageProfileId => Str

The storage profile ID.


=head2 _request_id => Str


=cut

