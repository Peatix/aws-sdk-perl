
package Paws::EC2::ImageAttribute;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest',]);
  has BootMode => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'bootMode', traits => ['NameInRequest',]);
  has DeregistrationProtection => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'deregistrationProtection', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'description', traits => ['NameInRequest',]);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);
  has ImdsSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'imdsSupport', traits => ['NameInRequest',]);
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'kernel', traits => ['NameInRequest',]);
  has LastLaunchedTime => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'lastLaunchedTime', traits => ['NameInRequest',]);
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchPermission]', request_name => 'launchPermission', traits => ['NameInRequest',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest',]);
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'ramdisk', traits => ['NameInRequest',]);
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'sriovNetSupport', traits => ['NameInRequest',]);
  has TpmSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'tpmSupport', traits => ['NameInRequest',]);
  has UefiData => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'uefiData', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageAttribute

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

The block device mapping entries.


=head2 BootMode => L<Paws::EC2::AttributeValue>

The boot mode.


=head2 DeregistrationProtection => L<Paws::EC2::AttributeValue>

Indicates whether deregistration protection is enabled for the AMI.


=head2 Description => L<Paws::EC2::AttributeValue>

A description for the AMI.


=head2 ImageId => Str

The ID of the AMI.


=head2 ImdsSupport => L<Paws::EC2::AttributeValue>

If C<v2.0>, it indicates that IMDSv2 is specified in the AMI. Instances
launched from this AMI will have C<HttpTokens> automatically set to
C<required> so that, by default, the instance requires that IMDSv2 is
used when requesting instance metadata. In addition,
C<HttpPutResponseHopLimit> is set to C<2>. For more information, see
Configure the AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration)
in the I<Amazon EC2 User Guide>.


=head2 KernelId => L<Paws::EC2::AttributeValue>

The kernel ID.


=head2 LastLaunchedTime => L<Paws::EC2::AttributeValue>

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the AMI was last used to launch
an EC2 instance. When the AMI is used to launch an instance, there is a
24-hour delay before that usage is reported.

C<lastLaunchedTime> data is available starting April 2017.


=head2 LaunchPermissions => ArrayRef[L<Paws::EC2::LaunchPermission>]

The launch permissions.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

The product codes.


=head2 RamdiskId => L<Paws::EC2::AttributeValue>

The RAM disk ID.


=head2 SriovNetSupport => L<Paws::EC2::AttributeValue>

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 TpmSupport => L<Paws::EC2::AttributeValue>

If the image is configured for NitroTPM support, the value is C<v2.0>.


=head2 UefiData => L<Paws::EC2::AttributeValue>

Base64 representation of the non-volatile UEFI variable store. To
retrieve the UEFI data, use the GetInstanceUefiData
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceUefiData)
command. You can inspect and modify the UEFI data by using the
python-uefivars tool (https://github.com/awslabs/python-uefivars) on
GitHub. For more information, see UEFI Secure Boot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html)
in the I<Amazon EC2 User Guide>.


=head2 _request_id => Str


=cut

