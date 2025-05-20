
package Paws::FSX::CreateFileSystemFromBackup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemTypeVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemLustreConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemOpenZFSConfiguration');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageCapacity => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileSystemFromBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateFileSystemFromBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystemFromBackup - Arguments for method CreateFileSystemFromBackup on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileSystemFromBackup on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateFileSystemFromBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileSystemFromBackup.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    # To create a new file system from backup
    # This operation creates a new file system from backup.
    my $CreateFileSystemFromBackupResponse = $fsx->CreateFileSystemFromBackup(
      'BackupId'           => 'backup-03e3c82e0183b7b6b',
      'ClientRequestToken' => 'f4c94ed7-238d-4c46-93db-48cd62ec33b7',
      'SecurityGroupIds'   => ['sg-edcd9784'],
      'SubnetIds'          => ['subnet-1234abcd'],
      'Tags'               => [

        {
          'Key'   => 'Name',
          'Value' => 'MyFileSystem'
        }
      ],
      'WindowsConfiguration' => {
        'ThroughputCapacity' => 8
      }
    );

    # Results:
    my $FileSystem = $CreateFileSystemFromBackupResponse->FileSystem;

    # Returns a L<Paws::FSX::CreateFileSystemFromBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateFileSystemFromBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str





=head2 ClientRequestToken => Str

A string of up to 63 ASCII characters that Amazon FSx uses to ensure
idempotent creation. This string is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.



=head2 FileSystemTypeVersion => Str

Sets the version for the Amazon FSx for Lustre file system that you're
creating from a backup. Valid values are C<2.10>, C<2.12>, and C<2.15>.

You can enter a Lustre version that is newer than the backup's
C<FileSystemTypeVersion> setting. If you don't enter a newer Lustre
version, it defaults to the backup's setting.



=head2 KmsKeyId => Str





=head2 LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>





=head2 OpenZFSConfiguration => L<Paws::FSX::CreateFileSystemOpenZFSConfiguration>

The OpenZFS configuration for the file system that's being created.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs for the security groups that apply to the specified
network interfaces created for file system access. These security
groups apply to all network interfaces. This value isn't returned in
later C<DescribeFileSystem> requests.



=head2 StorageCapacity => Int

Sets the storage capacity of the OpenZFS file system that you're
creating from a backup, in gibibytes (GiB). Valid values are from 64
GiB up to 524,288 GiB (512 TiB). However, the value that you specify
must be equal to or greater than the backup's storage capacity value.
If you don't use the C<StorageCapacity> parameter, the default is the
backup's C<StorageCapacity> value.

If used to create a file system other than OpenZFS, you must provide a
value that matches the backup's C<StorageCapacity> value. If you
provide any other value, Amazon FSx responds with an HTTP status code
400 Bad Request.



=head2 StorageType => Str

Sets the storage type for the Windows or OpenZFS file system that
you're creating from a backup. Valid values are C<SSD> and C<HDD>.

=over

=item *

Set to C<SSD> to use solid state drive storage. SSD is supported on all
Windows and OpenZFS deployment types.

=item *

Set to C<HDD> to use hard disk drive storage. HDD is supported on
C<SINGLE_AZ_2> and C<MULTI_AZ_1> FSx for Windows File Server file
system deployment types.

=back

The default value is C<SSD>.

HDD and SSD storage types have different minimum storage capacity
requirements. A restored file system's storage capacity is tied to the
file system that was backed up. You can create a file system that uses
HDD storage from a backup of a file system that used SSD storage if the
original SSD file system had a storage capacity of at least 2000 GiB.

Valid values are: C<"SSD">, C<"HDD">, C<"INTELLIGENT_TIERING">

=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

Specifies the IDs of the subnets that the file system will be
accessible from. For Windows C<MULTI_AZ_1> file system deployment
types, provide exactly two subnet IDs, one for the preferred file
server and one for the standby file server. You specify one of these
subnets as the preferred subnet using the C<WindowsConfiguration E<gt>
PreferredSubnetID> property.

Windows C<SINGLE_AZ_1> and C<SINGLE_AZ_2> file system deployment types,
Lustre file systems, and OpenZFS file systems provide exactly one
subnet ID. The file server is launched in that subnet's Availability
Zone.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

The tags to be applied to the file system at file system creation. The
key value of the C<Name> tag appears in the console as the file system
name.



=head2 WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>

The configuration for this Microsoft Windows file system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystemFromBackup in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

