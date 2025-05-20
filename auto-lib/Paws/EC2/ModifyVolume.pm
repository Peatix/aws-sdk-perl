
package Paws::EC2::ModifyVolume;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has MultiAttachEnabled => (is => 'ro', isa => 'Bool');
  has Size => (is => 'ro', isa => 'Int');
  has Throughput => (is => 'ro', isa => 'Int');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVolume - Arguments for method ModifyVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVolumeResult = $ec2->ModifyVolume(
      VolumeId           => 'MyVolumeId',
      DryRun             => 1,              # OPTIONAL
      Iops               => 1,              # OPTIONAL
      MultiAttachEnabled => 1,              # OPTIONAL
      Size               => 1,              # OPTIONAL
      Throughput         => 1,              # OPTIONAL
      VolumeType         => 'standard',     # OPTIONAL
    );

    # Results:
    my $VolumeModification = $ModifyVolumeResult->VolumeModification;

    # Returns a L<Paws::EC2::ModifyVolumeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVolume>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Iops => Int

The target IOPS rate of the volume. This parameter is valid only for
C<gp3>, C<io1>, and C<io2> volumes.

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

Default: The existing value is retained if you keep the same volume
type. If you change the volume type to C<io1>, C<io2>, or C<gp3>, the
default is 3,000.



=head2 MultiAttachEnabled => Bool

Specifies whether to enable Amazon EBS Multi-Attach. If you enable
Multi-Attach, you can attach the volume to up to 16 Nitro-based
instances
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html)
in the same Availability Zone. This parameter is supported with C<io1>
and C<io2> volumes only. For more information, see Amazon EBS
Multi-Attach
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes-multi.html)
in the I<Amazon EBS User Guide>.



=head2 Size => Int

The target size of the volume, in GiB. The target volume size must be
greater than or equal to the existing size of the volume.

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

Default: The existing size is retained.



=head2 Throughput => Int

The target throughput of the volume, in MiB/s. This parameter is valid
only for C<gp3> volumes. The maximum value is 1,000.

Default: The existing value is retained if the source and target volume
type is C<gp3>. Otherwise, the default value is 125.

Valid Range: Minimum value of 125. Maximum value of 1000.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume.



=head2 VolumeType => Str

The target EBS volume type of the volume. For more information, see
Amazon EBS volume types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html)
in the I<Amazon EBS User Guide>.

Default: The existing type is retained.

Valid values are: C<"standard">, C<"io1">, C<"io2">, C<"gp2">, C<"sc1">, C<"st1">, C<"gp3">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

