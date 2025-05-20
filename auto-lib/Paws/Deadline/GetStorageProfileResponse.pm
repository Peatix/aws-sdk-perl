
package Paws::Deadline::GetStorageProfileResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FileSystemLocations => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::FileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocations');
  has OsFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osFamily', required => 1);
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageProfileId', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetStorageProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 B<REQUIRED> DisplayName => Str

The display name of the storage profile.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 FileSystemLocations => ArrayRef[L<Paws::Deadline::FileSystemLocation>]

The location of the files for the storage profile.


=head2 B<REQUIRED> OsFamily => Str

The operating system (OS) for the storage profile.

Valid values are: C<"WINDOWS">, C<"LINUX">, C<"MACOS">
=head2 B<REQUIRED> StorageProfileId => Str

The storage profile ID.


=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut

