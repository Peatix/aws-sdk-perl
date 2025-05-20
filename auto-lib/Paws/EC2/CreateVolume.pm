
package Paws::EC2::CreateVolume;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MultiAttachEnabled => (is => 'ro', isa => 'Bool');
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorRequest');
  has OutpostArn => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has Throughput => (is => 'ro', isa => 'Int');
  has VolumeInitializationRate => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::Volume');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVolume - Arguments for method CreateVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a new volume
    # This example creates an 80 GiB General Purpose (SSD) volume in the
    # Availability Zone ``us-east-1a``.
    my $Volume = $ec2->CreateVolume(
      'AvailabilityZone' => 'us-east-1a',
      'Size'             => 80,
      'VolumeType'       => 'gp2'
    );

    # Results:
    my $AvailabilityZone = $Volume->AvailabilityZone;
    my $CreateTime       = $Volume->CreateTime;
    my $Encrypted        = $Volume->Encrypted;
    my $Iops             = $Volume->Iops;
    my $Size             = $Volume->Size;
    my $SnapshotId       = $Volume->SnapshotId;
    my $State            = $Volume->State;
    my $VolumeId         = $Volume->VolumeId;
    my $VolumeType       = $Volume->VolumeType;

# Returns a L<Paws::EC2::Volume> object.
# To create a new Provisioned IOPS (SSD) volume from a snapshot
# This example creates a new Provisioned IOPS (SSD) volume with 1000 provisioned
# IOPS from a snapshot in the Availability Zone ``us-east-1a``.
    my $Volume = $ec2->CreateVolume(
      'AvailabilityZone' => 'us-east-1a',
      'Iops'             => 1000,
      'SnapshotId'       => 'snap-066877671789bd71b',
      'VolumeType'       => 'io1'
    );

    # Results:
    my $Attachments      = $Volume->Attachments;
    my $AvailabilityZone = $Volume->AvailabilityZone;
    my $CreateTime       = $Volume->CreateTime;
    my $Iops             = $Volume->Iops;
    my $Size             = $Volume->Size;
    my $SnapshotId       = $Volume->SnapshotId;
    my $State            = $Volume->State;
    my $Tags             = $Volume->Tags;
    my $VolumeId         = $Volume->VolumeId;
    my $VolumeType       = $Volume->VolumeType;

    # Returns a L<Paws::EC2::Volume> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The ID of the Availability Zone in which to create the volume. For
example, C<us-east-1a>.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensure
Idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Indicates whether the volume should be encrypted. The effect of setting
the encryption state to C<true> depends on the volume origin (new or
from a snapshot), starting encryption state, ownership, and whether
encryption by default is enabled. For more information, see Encryption
by default
(https://docs.aws.amazon.com/ebs/latest/userguide/work-with-ebs-encr.html#encryption-by-default)
in the I<Amazon EBS User Guide>.

Encrypted Amazon EBS volumes must be attached to instances that support
Amazon EBS encryption. For more information, see Supported instance
types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html#ebs-encryption_supported_instances).



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

This parameter is required for C<io1> and C<io2> volumes. The default
for C<gp3> volumes is 3,000 IOPS. This parameter is not supported for
C<gp2>, C<st1>, C<sc1>, or C<standard> volumes.



=head2 KmsKeyId => Str

The identifier of the KMS key to use for Amazon EBS encryption. If this
parameter is not specified, your KMS key for Amazon EBS is used. If
C<KmsKeyId> is specified, the encrypted state must be C<true>.

You can specify the KMS key using any of the following:

=over

=item *

Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Key alias. For example, alias/ExampleAlias.

=item *

Key ARN. For example,
arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Alias ARN. For example,
arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.

=back

Amazon Web Services authenticates the KMS key asynchronously.
Therefore, if you specify an ID, alias, or ARN that is not valid, the
action can appear to complete, but eventually fails.



=head2 MultiAttachEnabled => Bool

Indicates whether to enable Amazon EBS Multi-Attach. If you enable
Multi-Attach, you can attach the volume to up to 16 Instances built on
the Nitro System
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html)
in the same Availability Zone. This parameter is supported with C<io1>
and C<io2> volumes only. For more information, see Amazon EBS
Multi-Attach
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes-multi.html)
in the I<Amazon EBS User Guide>.



=head2 Operator => L<Paws::EC2::OperatorRequest>

Reserved for internal use.



=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost on which to create the
volume.

If you intend to use a volume with an instance running on an outpost,
then you must create the volume on the same outpost as the instance.
You can't use a volume created in an Amazon Web Services Region with an
instance on an Amazon Web Services outpost, or the other way around.



=head2 Size => Int

The size of the volume, in GiBs. You must specify either a snapshot ID
or a volume size. If you specify a snapshot, the default is the
snapshot size. You can specify a volume size that is equal to or larger
than the snapshot size.

The following are the supported volumes sizes for each volume type:

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




=head2 SnapshotId => Str

The snapshot from which to create the volume. You must specify either a
snapshot ID or a volume size.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the volume during creation.



=head2 Throughput => Int

The throughput to provision for a volume, with a maximum of 1,000
MiB/s.

This parameter is valid only for C<gp3> volumes.

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



=head2 VolumeType => Str

The volume type. This parameter can be one of the following values:

=over

=item *

General Purpose SSD: C<gp2> | C<gp3>

=item *

Provisioned IOPS SSD: C<io1> | C<io2>

=item *

Throughput Optimized HDD: C<st1>

=item *

Cold HDD: C<sc1>

=item *

Magnetic: C<standard>

=back

Throughput Optimized HDD (C<st1>) and Cold HDD (C<sc1>) volumes can't
be used as boot volumes.

For more information, see Amazon EBS volume types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html)
in the I<Amazon EBS User Guide>.

Default: C<gp2>

Valid values are: C<"standard">, C<"io1">, C<"io2">, C<"gp2">, C<"sc1">, C<"st1">, C<"gp3">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

