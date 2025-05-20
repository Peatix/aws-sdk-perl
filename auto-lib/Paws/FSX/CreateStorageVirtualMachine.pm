
package Paws::FSX::CreateStorageVirtualMachine;
  use Moose;
  has ActiveDirectoryConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateSvmActiveDirectoryConfiguration');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RootVolumeSecurityStyle => (is => 'ro', isa => 'Str');
  has SvmAdminPassword => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageVirtualMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateStorageVirtualMachineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateStorageVirtualMachine - Arguments for method CreateStorageVirtualMachine on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStorageVirtualMachine on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateStorageVirtualMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStorageVirtualMachine.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateStorageVirtualMachineResponse = $fsx->CreateStorageVirtualMachine(
      FileSystemId                 => 'MyFileSystemId',
      Name                         => 'MyStorageVirtualMachineName',
      ActiveDirectoryConfiguration => {
        NetBiosName => 'MyNetBiosAlias',    # min: 1, max: 15
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps => [
            'MyIpAddress', ...              # min: 7, max: 15
          ],    # min: 1, max: 3
          DomainName =>
            'MyActiveDirectoryFullyQualifiedName',    # min: 1, max: 255
          Password => 'MyDirectoryPassword',          # min: 1, max: 256
          UserName => 'MyDirectoryUserName',          # min: 1, max: 256
          FileSystemAdministratorsGroup =>
            'MyFileSystemAdministratorsGroupName',  # min: 1, max: 256; OPTIONAL
          OrganizationalUnitDistinguishedName =>
            'MyOrganizationalUnitDistinguishedName'
          ,    # min: 1, max: 2000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ClientRequestToken      => 'MyClientRequestToken',    # OPTIONAL
      RootVolumeSecurityStyle => 'UNIX',                    # OPTIONAL
      SvmAdminPassword        => 'MyAdminPassword',         # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $StorageVirtualMachine =
      $CreateStorageVirtualMachineResponse->StorageVirtualMachine;

    # Returns a L<Paws::FSX::CreateStorageVirtualMachineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateStorageVirtualMachine>

=head1 ATTRIBUTES


=head2 ActiveDirectoryConfiguration => L<Paws::FSX::CreateSvmActiveDirectoryConfiguration>

Describes the self-managed Microsoft Active Directory to which you want
to join the SVM. Joining an Active Directory provides user
authentication and access control for SMB clients, including Microsoft
Windows and macOS clients accessing the file system.



=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileSystemId => Str





=head2 B<REQUIRED> Name => Str

The name of the SVM.



=head2 RootVolumeSecurityStyle => Str

The security style of the root volume of the SVM. Specify one of the
following values:

=over

=item *

C<UNIX> if the file system is managed by a UNIX administrator, the
majority of users are NFS clients, and an application accessing the
data uses a UNIX user as the service account.

=item *

C<NTFS> if the file system is managed by a Microsoft Windows
administrator, the majority of users are SMB clients, and an
application accessing the data uses a Microsoft Windows user as the
service account.

=item *

C<MIXED> This is an advanced setting. For more information, see Volume
security style
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-security-style.html)
in the Amazon FSx for NetApp ONTAP User Guide.

=back


Valid values are: C<"UNIX">, C<"NTFS">, C<"MIXED">

=head2 SvmAdminPassword => Str

The password to use when managing the SVM using the NetApp ONTAP CLI or
REST API. If you do not specify a password, you can still use the file
system's C<fsxadmin> user to manage the SVM.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStorageVirtualMachine in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

