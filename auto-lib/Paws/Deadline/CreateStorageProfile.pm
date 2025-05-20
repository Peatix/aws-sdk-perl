
package Paws::Deadline::CreateStorageProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FileSystemLocations => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::FileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocations');
  has OsFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osFamily', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/storage-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateStorageProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateStorageProfile - Arguments for method CreateStorageProfile on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStorageProfile on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateStorageProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStorageProfile.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateStorageProfileResponse = $deadline->CreateStorageProfile(
      DisplayName         => 'MyResourceName',
      FarmId              => 'MyFarmId',
      OsFamily            => 'WINDOWS',
      ClientToken         => 'MyClientToken',    # OPTIONAL
      FileSystemLocations => [
        {
          Name => 'MyFileSystemLocationName',    # min: 1, max: 64
          Path => 'MyPathString',                # max: 1024
          Type => 'SHARED',                      # values: SHARED, LOCAL

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $StorageProfileId = $CreateStorageProfileResponse->StorageProfileId;

    # Returns a L<Paws::Deadline::CreateStorageProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateStorageProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> DisplayName => Str

The display name of the storage profile.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the storage profile.



=head2 FileSystemLocations => ArrayRef[L<Paws::Deadline::FileSystemLocation>]

File system paths to include in the storage profile.



=head2 B<REQUIRED> OsFamily => Str

The type of operating system (OS) for the storage profile.

Valid values are: C<"WINDOWS">, C<"LINUX">, C<"MACOS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStorageProfile in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

