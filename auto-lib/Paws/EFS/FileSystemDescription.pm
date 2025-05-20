
package Paws::EFS::FileSystemDescription;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has AvailabilityZoneName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has CreationToken => (is => 'ro', isa => 'Str', required => 1);
  has Encrypted => (is => 'ro', isa => 'Bool');
  has FileSystemArn => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemProtection => (is => 'ro', isa => 'Paws::EFS::FileSystemProtectionDescription');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LifeCycleState => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfMountTargets => (is => 'ro', isa => 'Int', required => 1);
  has OwnerId => (is => 'ro', isa => 'Str', required => 1);
  has PerformanceMode => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughputInMibps => (is => 'ro', isa => 'Num');
  has SizeInBytes => (is => 'ro', isa => 'Paws::EFS::FileSystemSize', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]', required => 1);
  has ThroughputMode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::FileSystemDescription

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The unique and consistent identifier of the Availability Zone in which
the file system is located, and is valid only for One Zone file
systems. For example, C<use1-az1> is an Availability Zone ID for the
us-east-1 Amazon Web Services Region, and it has the same location in
every Amazon Web Services account.


=head2 AvailabilityZoneName => Str

Describes the Amazon Web Services Availability Zone in which the file
system is located, and is valid only for One Zone file systems. For
more information, see Using EFS storage classes
(https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the
I<Amazon EFS User Guide>.


=head2 B<REQUIRED> CreationTime => Str

The time that the file system was created, in seconds (since
1970-01-01T00:00:00Z).


=head2 B<REQUIRED> CreationToken => Str

The opaque string specified in the request.


=head2 Encrypted => Bool

A Boolean value that, if true, indicates that the file system is
encrypted.


=head2 FileSystemArn => Str

The Amazon Resource Name (ARN) for the EFS file system, in the format
C<arn:aws:elasticfilesystem:I<region>:I<account-id>:file-system/I<file-system-id>
>. Example with sample data:
C<arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567>


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system, assigned by Amazon EFS.


=head2 FileSystemProtection => L<Paws::EFS::FileSystemProtectionDescription>

Describes the protection on the file system.


=head2 KmsKeyId => Str

The ID of an KMS key used to protect the encrypted file system.


=head2 B<REQUIRED> LifeCycleState => Str

The lifecycle phase of the file system.

Valid values are: C<"creating">, C<"available">, C<"updating">, C<"deleting">, C<"deleted">, C<"error">
=head2 Name => Str

You can add tags to a file system, including a C<Name> tag. For more
information, see CreateFileSystem. If the file system has a C<Name>
tag, Amazon EFS returns the value in this field.


=head2 B<REQUIRED> NumberOfMountTargets => Int

The current number of mount targets that the file system has. For more
information, see CreateMountTarget.


=head2 B<REQUIRED> OwnerId => Str

The Amazon Web Services account that created the file system.


=head2 B<REQUIRED> PerformanceMode => Str

The performance mode of the file system.

Valid values are: C<"generalPurpose">, C<"maxIO">
=head2 ProvisionedThroughputInMibps => Num

The amount of provisioned throughput, measured in MiBps, for the file
system. Valid for file systems using C<ThroughputMode> set to
C<provisioned>.


=head2 B<REQUIRED> SizeInBytes => L<Paws::EFS::FileSystemSize>

The latest known metered size (in bytes) of data stored in the file
system, in its C<Value> field, and the time at which that size was
determined in its C<Timestamp> field. The C<Timestamp> value is the
integer number of seconds since 1970-01-01T00:00:00Z. The
C<SizeInBytes> value doesn't represent the size of a consistent
snapshot of the file system, but it is eventually consistent when there
are no writes to the file system. That is, C<SizeInBytes> represents
actual size only if the file system is not modified for a period longer
than a couple of hours. Otherwise, the value is not the exact size that
the file system was at any point in time.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::EFS::Tag>]

The tags associated with the file system, presented as an array of
C<Tag> objects.


=head2 ThroughputMode => Str

Displays the file system's throughput mode. For more information, see
Throughput modes
(https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes)
in the I<Amazon EFS User Guide>.

Valid values are: C<"bursting">, C<"provisioned">, C<"elastic">
=head2 _request_id => Str


=cut

