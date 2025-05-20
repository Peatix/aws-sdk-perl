
package Paws::Datasync::CreateLocationFsxWindows;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has FsxFilesystemArn => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has User => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationFsxWindows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationFsxWindowsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxWindows - Arguments for method CreateLocationFsxWindows on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationFsxWindows on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationFsxWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationFsxWindows.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationFsxWindowsResponse = $datasync->CreateLocationFsxWindows(
      FsxFilesystemArn  => 'MyFsxFilesystemArn',
      Password          => 'MySmbPassword',
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...    # max: 128
      ],
      User         => 'MySmbUser',
      Domain       => 'MySmbDomain',                 # OPTIONAL
      Subdirectory => 'MyFsxWindowsSubdirectory',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationFsxWindowsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationFsxWindowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationFsxWindows>

=head1 ATTRIBUTES


=head2 Domain => Str

Specifies the name of the Windows domain that the FSx for Windows File
Server file system belongs to.

If you have multiple Active Directory domains in your environment,
configuring this parameter makes sure that DataSync connects to the
right file system.



=head2 B<REQUIRED> FsxFilesystemArn => Str

Specifies the Amazon Resource Name (ARN) for the FSx for Windows File
Server file system.



=head2 B<REQUIRED> Password => Str

Specifies the password of the user with the permissions to mount and
access the files, folders, and file metadata in your FSx for Windows
File Server file system.



=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

Specifies the ARNs of the Amazon EC2 security groups that provide
access to your file system's preferred subnet.

The security groups that you specify must be able to communicate with
your file system's security groups. For information about configuring
security groups for file system access, see the I<Amazon FSx for
Windows File Server User Guide>
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/limit-access-security-groups.html).

If you choose a security group that doesn't allow connections from
within itself, do one of the following:

=over

=item *

Configure the security group to allow it to communicate within itself.

=item *

Choose a different security group that can communicate with the mount
target's security group.

=back




=head2 Subdirectory => Str

Specifies a mount path for your file system using forward slashes. This
is where DataSync reads or writes data (depending on if this is a
source or destination location).



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your location.



=head2 B<REQUIRED> User => Str

Specifies the user with the permissions to mount and access the files,
folders, and file metadata in your FSx for Windows File Server file
system.

For information about choosing a user with the right level of access
for your transfer, see required permissions
(https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions)
for FSx for Windows File Server locations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationFsxWindows in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

