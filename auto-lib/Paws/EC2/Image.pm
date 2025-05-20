package Paws::EC2::Image;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest']);
  has BootMode => (is => 'ro', isa => 'Str', request_name => 'bootMode', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has DeprecationTime => (is => 'ro', isa => 'Str', request_name => 'deprecationTime', traits => ['NameInRequest']);
  has DeregistrationProtection => (is => 'ro', isa => 'Str', request_name => 'deregistrationProtection', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EnaSupport => (is => 'ro', isa => 'Bool', request_name => 'enaSupport', traits => ['NameInRequest']);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest']);
  has ImageAllowed => (is => 'ro', isa => 'Bool', request_name => 'imageAllowed', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has ImageLocation => (is => 'ro', isa => 'Str', request_name => 'imageLocation', traits => ['NameInRequest']);
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', request_name => 'imageOwnerAlias', traits => ['NameInRequest']);
  has ImageType => (is => 'ro', isa => 'Str', request_name => 'imageType', traits => ['NameInRequest']);
  has ImdsSupport => (is => 'ro', isa => 'Str', request_name => 'imdsSupport', traits => ['NameInRequest']);
  has KernelId => (is => 'ro', isa => 'Str', request_name => 'kernelId', traits => ['NameInRequest']);
  has LastLaunchedTime => (is => 'ro', isa => 'Str', request_name => 'lastLaunchedTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'imageOwnerId', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has PlatformDetails => (is => 'ro', isa => 'Str', request_name => 'platformDetails', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
  has Public => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has RamdiskId => (is => 'ro', isa => 'Str', request_name => 'ramdiskId', traits => ['NameInRequest']);
  has RootDeviceName => (is => 'ro', isa => 'Str', request_name => 'rootDeviceName', traits => ['NameInRequest']);
  has RootDeviceType => (is => 'ro', isa => 'Str', request_name => 'rootDeviceType', traits => ['NameInRequest']);
  has SourceImageId => (is => 'ro', isa => 'Str', request_name => 'sourceImageId', traits => ['NameInRequest']);
  has SourceImageRegion => (is => 'ro', isa => 'Str', request_name => 'sourceImageRegion', traits => ['NameInRequest']);
  has SourceInstanceId => (is => 'ro', isa => 'Str', request_name => 'sourceInstanceId', traits => ['NameInRequest']);
  has SriovNetSupport => (is => 'ro', isa => 'Str', request_name => 'sriovNetSupport', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'imageState', traits => ['NameInRequest']);
  has StateReason => (is => 'ro', isa => 'Paws::EC2::StateReason', request_name => 'stateReason', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TpmSupport => (is => 'ro', isa => 'Str', request_name => 'tpmSupport', traits => ['NameInRequest']);
  has UsageOperation => (is => 'ro', isa => 'Str', request_name => 'usageOperation', traits => ['NameInRequest']);
  has VirtualizationType => (is => 'ro', isa => 'Str', request_name => 'virtualizationType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Image object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., VirtualizationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the image.


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

Any block device mapping entries.


=head2 BootMode => Str

The boot mode of the image. For more information, see Boot modes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in
the I<Amazon EC2 User Guide>.


=head2 CreationDate => Str

The date and time the image was created.


=head2 DeprecationTime => Str

The date and time to deprecate the AMI, in UTC, in the following
format: I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z. If you specified a
value for seconds, Amazon EC2 rounds the seconds to the nearest minute.


=head2 DeregistrationProtection => Str

Indicates whether deregistration protection is enabled for the AMI.


=head2 Description => Str

The description of the AMI that was provided during image creation.


=head2 EnaSupport => Bool

Specifies whether enhanced networking with ENA is enabled.


=head2 Hypervisor => Str

The hypervisor type of the image. Only C<xen> is supported. C<ovm> is
not supported.


=head2 ImageAllowed => Bool

If C<true>, the AMI satisfies the criteria for Allowed AMIs and can be
discovered and used in the account. If C<false> and Allowed AMIs is set
to C<enabled>, the AMI can't be discovered or used in the account. If
C<false> and Allowed AMIs is set to C<audit-mode>, the AMI can be
discovered and used in the account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 ImageId => Str

The ID of the AMI.


=head2 ImageLocation => Str

The location of the AMI.


=head2 ImageOwnerAlias => Str

The owner alias (C<amazon> | C<aws-backup-vault> | C<aws-marketplace>).


=head2 ImageType => Str

The type of image.


=head2 ImdsSupport => Str

If C<v2.0>, it indicates that IMDSv2 is specified in the AMI. Instances
launched from this AMI will have C<HttpTokens> automatically set to
C<required> so that, by default, the instance requires that IMDSv2 is
used when requesting instance metadata. In addition,
C<HttpPutResponseHopLimit> is set to C<2>. For more information, see
Configure the AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration)
in the I<Amazon EC2 User Guide>.


=head2 KernelId => Str

The kernel associated with the image, if any. Only applicable for
machine images.


=head2 LastLaunchedTime => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the AMI was last used to launch
an EC2 instance. When the AMI is used to launch an instance, there is a
24-hour delay before that usage is reported.

C<lastLaunchedTime> data is available starting April 2017.


=head2 Name => Str

The name of the AMI that was provided during image creation.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the image.


=head2 Platform => Str

This value is set to C<windows> for Windows AMIs; otherwise, it is
blank.


=head2 PlatformDetails => Str

The platform details associated with the billing code of the AMI. For
more information, see Understand AMI billing information
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
in the I<Amazon EC2 User Guide>.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

Any product codes associated with the AMI.


=head2 Public => Bool

Indicates whether the image has public launch permissions. The value is
C<true> if this image has public launch permissions or C<false> if it
has only implicit and explicit launch permissions.


=head2 RamdiskId => Str

The RAM disk associated with the image, if any. Only applicable for
machine images.


=head2 RootDeviceName => Str

The device name of the root device volume (for example, C</dev/sda1>).


=head2 RootDeviceType => Str

The type of root device used by the AMI. The AMI can use an Amazon EBS
volume or an instance store volume.


=head2 SourceImageId => Str

The ID of the source AMI from which the AMI was created.

The ID only appears if the AMI was created using CreateImage,
CopyImage, or CreateRestoreImageTask. The ID does not appear if the AMI
was created using any other API. For some older AMIs, the ID might not
be available. For more information, see Identify the source AMI used to
create a new AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/identify-source-ami-used-to-create-new-ami.html)
in the I<Amazon EC2 User Guide>.


=head2 SourceImageRegion => Str

The Region of the source AMI.

The Region only appears if the AMI was created using CreateImage,
CopyImage, or CreateRestoreImageTask. The Region does not appear if the
AMI was created using any other API. For some older AMIs, the Region
might not be available. For more information, see Identify the source
AMI used to create a new AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/identify-source-ami-used-to-create-new-ami.html)
in the I<Amazon EC2 User Guide>.


=head2 SourceInstanceId => Str

The ID of the instance that the AMI was created from if the AMI was
created using CreateImage
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html).
This field only appears if the AMI was created using CreateImage.


=head2 SriovNetSupport => Str

Specifies whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 State => Str

The current state of the AMI. If the state is C<available>, the image
is successfully registered and can be used to launch an instance.


=head2 StateReason => L<Paws::EC2::StateReason>

The reason for the state change.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the image.


=head2 TpmSupport => Str

If the image is configured for NitroTPM support, the value is C<v2.0>.
For more information, see NitroTPM
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in
the I<Amazon EC2 User Guide>.


=head2 UsageOperation => Str

The operation of the Amazon EC2 instance and the billing code that is
associated with the AMI. C<usageOperation> corresponds to the
lineitem/Operation
(https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation)
column on your Amazon Web Services Cost and Usage Report and in the
Amazon Web Services Price List API
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html).
You can view these fields on the B<Instances> or B<AMIs> pages in the
Amazon EC2 console, or in the responses that are returned by the
DescribeImages
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html)
command in the Amazon EC2 API, or the describe-images
(https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html)
command in the CLI.


=head2 VirtualizationType => Str

The type of virtualization of the AMI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
