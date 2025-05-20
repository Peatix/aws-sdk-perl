
package Paws::Datasync::UpdateLocationFsxWindows;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationFsxWindows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationFsxWindowsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationFsxWindows - Arguments for method UpdateLocationFsxWindows on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationFsxWindows on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationFsxWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationFsxWindows.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationFsxWindowsResponse = $datasync->UpdateLocationFsxWindows(
      LocationArn  => 'MyLocationArn',
      Domain       => 'MyUpdateSmbDomain',           # OPTIONAL
      Password     => 'MySmbPassword',               # OPTIONAL
      Subdirectory => 'MyFsxWindowsSubdirectory',    # OPTIONAL
      User         => 'MySmbUser',                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationFsxWindows>

=head1 ATTRIBUTES


=head2 Domain => Str

Specifies the name of the Windows domain that your FSx for Windows File
Server file system belongs to.

If you have multiple Active Directory domains in your environment,
configuring this parameter makes sure that DataSync connects to the
right file system.



=head2 B<REQUIRED> LocationArn => Str

Specifies the ARN of the FSx for Windows File Server transfer location
that you're updating.



=head2 Password => Str

Specifies the password of the user with the permissions to mount and
access the files, folders, and file metadata in your FSx for Windows
File Server file system.



=head2 Subdirectory => Str

Specifies a mount path for your file system using forward slashes.
DataSync uses this subdirectory to read or write data (depending on
whether the file system is a source or destination location).



=head2 User => Str

Specifies the user with the permissions to mount and access the files,
folders, and file metadata in your FSx for Windows File Server file
system.

For information about choosing a user with the right level of access
for your transfer, see required permissions
(https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions)
for FSx for Windows File Server locations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationFsxWindows in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

