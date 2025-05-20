
package Paws::EC2::CreateImage;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'blockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NoReboot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'noReboot' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateImage - Arguments for method CreateImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To create an AMI from an Amazon EBS-backed instance
# This example creates an AMI from the specified instance and adds an EBS volume
# with the device name /dev/sdh and an instance store volume with the device
# name /dev/sdc.
    my $CreateImageResult = $ec2->CreateImage(
      'BlockDeviceMappings' => [

        {
          'DeviceName' => '/dev/sdh',
          'Ebs'        => {
            'VolumeSize' => 100
          }
        },

        {
          'DeviceName'  => '/dev/sdc',
          'VirtualName' => 'ephemeral1'
        }
      ],
      'Description' => 'An AMI for my server',
      'InstanceId'  => 'i-1234567890abcdef0',
      'Name'        => 'My server',
      'NoReboot'    => 1
    );

    # Results:
    my $ImageId = $CreateImageResult->ImageId;

    # Returns a L<Paws::EC2::CreateImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateImage>

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

The block device mappings.

When using the CreateImage action:

=over

=item *

You can't change the volume size using the VolumeSize parameter. If you
want a different volume size, you must first change the volume size of
the source instance.

=item *

You can't modify the encryption status of existing volumes or
snapshots. To create an AMI with volumes or snapshots that have a
different encryption status (for example, where the source volume and
snapshots are unencrypted, and you want to create an AMI with encrypted
volumes or snapshots), use the CopyImage action.

=item *

The only option that can be changed for existing mappings or snapshots
is C<DeleteOnTermination>.

=back




=head2 Description => Str

A description for the new image.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 B<REQUIRED> Name => Str

A name for the new image.

Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)



=head2 NoReboot => Bool

Indicates whether or not the instance should be automatically rebooted
before creating the image. Specify one of the following values:

=over

=item *

C<true> - The instance is not rebooted before creating the image. This
creates crash-consistent snapshots that include only the data that has
been written to the volumes at the time the snapshots are created.
Buffered data and data in memory that has not yet been written to the
volumes is not included in the snapshots.

=item *

C<false> - The instance is rebooted before creating the image. This
ensures that all buffered data and data in memory is written to the
volumes before the snapshots are created.

=back

Default: C<false>



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the AMI and snapshots on creation. You can tag the
AMI, the snapshots, or both.

=over

=item *

To tag the AMI, the value for C<ResourceType> must be C<image>.

=item *

To tag the snapshots that are created of the root volume and of other
Amazon EBS volumes that are attached to the instance, the value for
C<ResourceType> must be C<snapshot>. The same tag is applied to all of
the snapshots that are created.

=back

If you specify other values for C<ResourceType>, the request fails.

To tag an AMI or snapshot after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

