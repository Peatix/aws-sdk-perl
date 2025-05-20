package Paws::EC2::LaunchTemplateEbsBlockDeviceRequest;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has Throughput => (is => 'ro', isa => 'Int');
  has VolumeInitializationRate => (is => 'ro', isa => 'Int');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateEbsBlockDeviceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

Indicates whether the EBS volume is deleted on instance termination.


=head2 Encrypted => Bool

Indicates whether the EBS volume is encrypted. Encrypted volumes can
only be attached to instances that support Amazon EBS encryption. If
you are creating a volume from a snapshot, you can't specify an
encryption value.


=head2 Iops => Int

The number of I/O operations per second (IOPS). For C<gp3>, C<io1>, and
C<io2> volumes, this represents the number of IOPS that are provisioned
for the volume. For C<gp2> volumes, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting.

The following are the supported values for each volume type:

=over

=item *

C<gp3>: 3,000 - 16,000 IOPS

=item *

C<io1>: 100 - 64,000 IOPS

=item *

C<io2>: 100 - 256,000 IOPS

=back

For C<io2> volumes, you can achieve up to 256,000 IOPS on instances
built on the Nitro System
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html).
On other instances, you can achieve performance up to 32,000 IOPS.

This parameter is supported for C<io1>, C<io2>, and C<gp3> volumes
only.


=head2 KmsKeyId => Str

Identifier (key ID, key alias, key ARN, or alias ARN) of the customer
managed KMS key to use for EBS encryption.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 Throughput => Int

The throughput to provision for a C<gp3> volume, with a maximum of
1,000 MiB/s.

Valid Range: Minimum value of 125. Maximum value of 1000.


=head2 VolumeInitializationRate => Int

Specifies the Amazon EBS Provisioned Rate for Volume Initialization
(volume initialization rate), in MiB/s, at which to download the
snapshot blocks from Amazon S3 to the volume. This is also known as
I<volume initialization>. Specifying a volume initialization rate
ensures that the volume is initialized at a predictable and consistent
rate after creation.

This parameter is supported only for volumes created from snapshots.
Omit this parameter if:

=over

=item *

You want to create the volume using fast snapshot restore. You must
specify a snapshot that is enabled for fast snapshot restore. In this
case, the volume is fully initialized at creation.

If you specify a snapshot that is enabled for fast snapshot restore and
a volume initialization rate, the volume will be initialized at the
specified rate instead of fast snapshot restore.

=item *

You want to create a volume that is initialized at the default rate.

=back

For more information, see Initialize Amazon EBS volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/initalize-volume.html)
in the I<Amazon EC2 User Guide>.

Valid range: 100 - 300 MiB/s


=head2 VolumeSize => Int

The size of the volume, in GiBs. You must specify either a snapshot ID
or a volume size. The following are the supported volumes sizes for
each volume type:

=over

=item *

C<gp2> and C<gp3>: 1 - 16,384 GiB

=item *

C<io1>: 4 - 16,384 GiB

=item *

C<io2>: 4 - 65,536 GiB

=item *

C<st1> and C<sc1>: 125 - 16,384 GiB

=item *

C<standard>: 1 - 1024 GiB

=back



=head2 VolumeType => Str

The volume type. For more information, see Amazon EBS volume types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html)
in the I<Amazon EBS User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
