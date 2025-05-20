
package Paws::FSX::UpdateFileSystem;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemTypeVersion => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemLustreConfiguration');
  has OntapConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemOntapConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemOpenZFSConfiguration');
  has StorageCapacity => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateFileSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileSystem - Arguments for method UpdateFileSystem on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileSystem on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileSystem.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    # To update an existing file system
    # This operation updates an existing file system.
    my $UpdateFileSystemResponse = $fsx->UpdateFileSystem(
      'FileSystemId'         => 'fs-0498eed5fe91001ec',
      'WindowsConfiguration' => {
        'AutomaticBackupRetentionDays'  => 10,
        'DailyAutomaticBackupStartTime' => '06:00',
        'WeeklyMaintenanceStartTime'    => '3:06:00'
      }
    );

    # Results:
    my $FileSystem = $UpdateFileSystemResponse->FileSystem;

    # Returns a L<Paws::FSX::UpdateFileSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateFileSystem>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A string of up to 63 ASCII characters that Amazon FSx uses to ensure
idempotent updates. This string is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.



=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system that you are updating.



=head2 FileSystemTypeVersion => Str

The Lustre version you are updating an FSx for Lustre file system to.
Valid values are C<2.12> and C<2.15>. The value you choose must be
newer than the file system's current Lustre version.



=head2 LustreConfiguration => L<Paws::FSX::UpdateFileSystemLustreConfiguration>





=head2 OntapConfiguration => L<Paws::FSX::UpdateFileSystemOntapConfiguration>





=head2 OpenZFSConfiguration => L<Paws::FSX::UpdateFileSystemOpenZFSConfiguration>

The configuration updates for an FSx for OpenZFS file system.



=head2 StorageCapacity => Int

Use this parameter to increase the storage capacity of an FSx for
Windows File Server, FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP
file system. Specifies the storage capacity target value, in GiB, to
increase the storage capacity for the file system that you're updating.

You can't make a storage capacity increase request if there is an
existing storage capacity increase request in progress.

For Lustre file systems, the storage capacity target value can be the
following:

=over

=item *

For C<SCRATCH_2>, C<PERSISTENT_1>, and C<PERSISTENT_2 SSD> deployment
types, valid values are in multiples of 2400 GiB. The value must be
greater than the current storage capacity.

=item *

For C<PERSISTENT HDD> file systems, valid values are multiples of 6000
GiB for 12-MBps throughput per TiB file systems and multiples of 1800
GiB for 40-MBps throughput per TiB file systems. The values must be
greater than the current storage capacity.

=item *

For C<SCRATCH_1> file systems, you can't increase the storage capacity.

=back

For more information, see Managing storage and throughput capacity
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html)
in the I<FSx for Lustre User Guide>.

For FSx for OpenZFS file systems, the storage capacity target value
must be at least 10 percent greater than the current storage capacity
value. For more information, see Managing storage capacity
(https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html)
in the I<FSx for OpenZFS User Guide>.

For Windows file systems, the storage capacity target value must be at
least 10 percent greater than the current storage capacity value. To
increase storage capacity, the file system must have at least 16 MBps
of throughput capacity. For more information, see Managing storage
capacity
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html)
in the I<Amazon FSxfor Windows File Server User Guide>.

For ONTAP file systems, the storage capacity target value must be at
least 10 percent greater than the current storage capacity value. For
more information, see Managing storage capacity and provisioned IOPS
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html)
in the I<Amazon FSx for NetApp ONTAP User Guide>.



=head2 StorageType => Str



Valid values are: C<"SSD">, C<"HDD">, C<"INTELLIGENT_TIERING">

=head2 WindowsConfiguration => L<Paws::FSX::UpdateFileSystemWindowsConfiguration>

The configuration updates for an Amazon FSx for Windows File Server
file system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

