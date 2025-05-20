
package Paws::FSX::CreateFileSystem;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemType => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemTypeVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemLustreConfiguration');
  has OntapConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemOntapConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemOpenZFSConfiguration');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageCapacity => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateFileSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystem - Arguments for method CreateFileSystem on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileSystem on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileSystem.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
  # To create a new file system
  # This operation creates a new Amazon FSx for Windows File Server file system.
    my $CreateFileSystemResponse = $fsx->CreateFileSystem(
      'ClientRequestToken' => 'a8ca07e4-61ec-4399-99f4-19853801bcd5',
      'FileSystemType'     => 'WINDOWS',
      'KmsKeyId'           =>
'arn:aws:kms:us-east-1:012345678912:key/1111abcd-2222-3333-4444-55556666eeff',
      'SecurityGroupIds' => ['sg-edcd9784'],
      'StorageCapacity'  => 3200,
      'StorageType'      => 'HDD',
      'SubnetIds'        => ['subnet-1234abcd'],
      'Tags'             => [

        {
          'Key'   => 'Name',
          'Value' => 'MyFileSystem'
        }
      ],
      'WindowsConfiguration' => {
        'ActiveDirectoryId'             => 'd-1234abcd12',
        'Aliases'                       => ['accounting.corp.example.com'],
        'AutomaticBackupRetentionDays'  => 30,
        'DailyAutomaticBackupStartTime' => '05:00',
        'ThroughputCapacity'            => 32,
        'WeeklyMaintenanceStartTime'    => '1:05:00'
      }
    );

    # Results:
    my $FileSystem = $CreateFileSystemResponse->FileSystem;

    # Returns a L<Paws::FSX::CreateFileSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateFileSystem>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A string of up to 63 ASCII characters that Amazon FSx uses to ensure
idempotent creation. This string is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.



=head2 B<REQUIRED> FileSystemType => Str

The type of Amazon FSx file system to create. Valid values are
C<WINDOWS>, C<LUSTRE>, C<ONTAP>, and C<OPENZFS>.

Valid values are: C<"WINDOWS">, C<"LUSTRE">, C<"ONTAP">, C<"OPENZFS">

=head2 FileSystemTypeVersion => Str

For FSx for Lustre file systems, sets the Lustre version for the file
system that you're creating. Valid values are C<2.10>, C<2.12>, and
C<2.15>:

=over

=item *

C<2.10> is supported by the Scratch and Persistent_1 Lustre deployment
types.

=item *

C<2.12> is supported by all Lustre deployment types, except for
C<PERSISTENT_2> with a metadata configuration mode.

=item *

C<2.15> is supported by all Lustre deployment types and is recommended
for all new file systems.

=back

Default value is C<2.10>, except for the following deployments:

=over

=item *

Default value is C<2.12> when C<DeploymentType> is set to
C<PERSISTENT_2> without a metadata configuration mode.

=item *

Default value is C<2.15> when C<DeploymentType> is set to
C<PERSISTENT_2> with a metadata configuration mode.

=back




=head2 KmsKeyId => Str





=head2 LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>





=head2 OntapConfiguration => L<Paws::FSX::CreateFileSystemOntapConfiguration>





=head2 OpenZFSConfiguration => L<Paws::FSX::CreateFileSystemOpenZFSConfiguration>

The OpenZFS configuration for the file system that's being created.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs specifying the security groups to apply to all network
interfaces created for file system access. This list isn't returned in
later requests to describe the file system.

You must specify a security group if you are creating a Multi-AZ FSx
for ONTAP file system in a VPC subnet that has been shared with you.



=head2 StorageCapacity => Int

Sets the storage capacity of the file system that you're creating, in
gibibytes (GiB).

B<FSx for Lustre file systems> - The amount of storage capacity that
you can configure depends on the value that you set for C<StorageType>
and the Lustre C<DeploymentType>, as follows:

=over

=item *

For C<SCRATCH_2>, C<PERSISTENT_2>, and C<PERSISTENT_1> deployment types
using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and
increments of 2400 GiB.

=item *

For C<PERSISTENT_1> HDD file systems, valid values are increments of
6000 GiB for 12 MB/s/TiB file systems and increments of 1800 GiB for 40
MB/s/TiB file systems.

=item *

For C<SCRATCH_1> deployment type, valid values are 1200 GiB, 2400 GiB,
and increments of 3600 GiB.

=back

B<FSx for ONTAP file systems> - The amount of storage capacity that you
can configure depends on the value of the C<HAPairs> property. The
minimum value is calculated as 1,024 * C<HAPairs> and the maximum is
calculated as 524,288 * C<HAPairs>.

B<FSx for OpenZFS file systems> - The amount of storage capacity that
you can configure is from 64 GiB up to 524,288 GiB (512 TiB).

B<FSx for Windows File Server file systems> - The amount of storage
capacity that you can configure depends on the value that you set for
C<StorageType> as follows:

=over

=item *

For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).

=item *

For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).

=back




=head2 StorageType => Str

Sets the storage class for the file system that you're creating. Valid
values are C<SSD>, C<HDD>, and C<INTELLIGENT_TIERING>.

=over

=item *

Set to C<SSD> to use solid state drive storage. SSD is supported on all
Windows, Lustre, ONTAP, and OpenZFS deployment types.

=item *

Set to C<HDD> to use hard disk drive storage. HDD is supported on
C<SINGLE_AZ_2> and C<MULTI_AZ_1> Windows file system deployment types,
and on C<PERSISTENT_1> Lustre file system deployment types.

=item *

Set to C<INTELLIGENT_TIERING> to use fully elastic,
intelligently-tiered storage. Intelligent-Tiering is only available for
OpenZFS file systems with the Multi-AZ deployment type.

=back

Default value is C<SSD>. For more information, see Storage type options
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options)
in the I<FSx for Windows File Server User Guide>, Multiple storage
options
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options)
in the I<FSx for Lustre User Guide>, and Working with
Intelligent-Tiering
(https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance-intelligent-tiering)
in the I<Amazon FSx for OpenZFS User Guide>.

Valid values are: C<"SSD">, C<"HDD">, C<"INTELLIGENT_TIERING">

=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

Specifies the IDs of the subnets that the file system will be
accessible from. For Windows and ONTAP C<MULTI_AZ_1> deployment
types,provide exactly two subnet IDs, one for the preferred file server
and one for the standby file server. You specify one of these subnets
as the preferred subnet using the C<WindowsConfiguration E<gt>
PreferredSubnetID> or C<OntapConfiguration E<gt> PreferredSubnetID>
properties. For more information about Multi-AZ file system
configuration, see Availability and durability: Single-AZ and Multi-AZ
file systems
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html)
in the I<Amazon FSx for Windows User Guide> and Availability and
durability
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html)
in the I<Amazon FSx for ONTAP User Guide>.

For Windows C<SINGLE_AZ_1> and C<SINGLE_AZ_2> and all Lustre deployment
types, provide exactly one subnet ID. The file server is launched in
that subnet's Availability Zone.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

The tags to apply to the file system that's being created. The key
value of the C<Name> tag appears in the console as the file system
name.



=head2 WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>

The Microsoft Windows configuration for the file system that's being
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

