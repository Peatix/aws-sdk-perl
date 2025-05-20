
package Paws::Deadline::UpdateStorageProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FileSystemLocationsToAdd => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::FileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocationsToAdd');
  has FileSystemLocationsToRemove => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::FileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocationsToRemove');
  has OsFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osFamily');
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'storageProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStorageProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateStorageProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateStorageProfile - Arguments for method UpdateStorageProfile on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStorageProfile on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateStorageProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStorageProfile.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateStorageProfileResponse = $deadline->UpdateStorageProfile(
      FarmId                   => 'MyFarmId',
      StorageProfileId         => 'MyStorageProfileId',
      ClientToken              => 'MyClientToken',        # OPTIONAL
      DisplayName              => 'MyResourceName',       # OPTIONAL
      FileSystemLocationsToAdd => [
        {
          Name => 'MyFileSystemLocationName',    # min: 1, max: 64
          Path => 'MyPathString',                # max: 1024
          Type => 'SHARED',                      # values: SHARED, LOCAL

        },
        ...
      ],    # OPTIONAL
      FileSystemLocationsToRemove => [
        {
          Name => 'MyFileSystemLocationName',    # min: 1, max: 64
          Path => 'MyPathString',                # max: 1024
          Type => 'SHARED',                      # values: SHARED, LOCAL

        },
        ...
      ],    # OPTIONAL
      OsFamily => 'WINDOWS',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateStorageProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 DisplayName => Str

The display name of the storage profile to update.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update.



=head2 FileSystemLocationsToAdd => ArrayRef[L<Paws::Deadline::FileSystemLocation>]

The file system location names to add.



=head2 FileSystemLocationsToRemove => ArrayRef[L<Paws::Deadline::FileSystemLocation>]

The file system location names to remove.



=head2 OsFamily => Str

The OS system to update.

Valid values are: C<"WINDOWS">, C<"LINUX">, C<"MACOS">

=head2 B<REQUIRED> StorageProfileId => Str

The storage profile ID to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStorageProfile in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

