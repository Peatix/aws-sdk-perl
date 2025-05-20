
package Paws::EC2::DescribeImages;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ExecutableUsers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ExecutableBy' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has IncludeDeprecated => (is => 'ro', isa => 'Bool');
  has IncludeDisabled => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Owners => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'Owner' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImages - Arguments for method DescribeImages on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImages on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImages.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe an AMI
    # This example describes the specified AMI.
    my $DescribeImagesResult =
      $ec2->DescribeImages( 'ImageIds' => ['ami-5731123e'] );

    # Results:
    my $Images = $DescribeImagesResult->Images;

    # Returns a L<Paws::EC2::DescribeImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeImages>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExecutableUsers => ArrayRef[Str|Undef]

Scopes the images by users with explicit launch permissions. Specify an
Amazon Web Services account ID, C<self> (the sender of the request), or
C<all> (public AMIs).

=over

=item *

If you specify an Amazon Web Services account ID that is not your own,
only AMIs shared with that specific Amazon Web Services account ID are
returned. However, AMIs that are shared with the accountE<rsquo>s
organization or organizational unit (OU) are not returned.

=item *

If you specify C<self> or your own Amazon Web Services account ID, AMIs
shared with your account are returned. In addition, AMIs that are
shared with the organization or OU of which you are member are also
returned.

=item *

If you specify C<all>, all public AMIs are returned.

=back




=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<architecture> - The image architecture (C<i386> | C<x86_64> |
C<arm64> | C<x86_64_mac> | C<arm64_mac>).

=item *

C<block-device-mapping.delete-on-termination> - A Boolean value that
indicates whether the Amazon EBS volume is deleted on instance
termination.

=item *

C<block-device-mapping.device-name> - The device name specified in the
block device mapping (for example, C</dev/sdh> or C<xvdh>).

=item *

C<block-device-mapping.snapshot-id> - The ID of the snapshot used for
the Amazon EBS volume.

=item *

C<block-device-mapping.volume-size> - The volume size of the Amazon EBS
volume, in GiB.

=item *

C<block-device-mapping.volume-type> - The volume type of the Amazon EBS
volume (C<io1> | C<io2> | C<gp2> | C<gp3> | C<sc1 >| C<st1> |
C<standard>).

=item *

C<block-device-mapping.encrypted> - A Boolean that indicates whether
the Amazon EBS volume is encrypted.

=item *

C<creation-date> - The time when the image was created, in the ISO 8601
format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for example,
C<2021-09-29T11:04:43.305Z>. You can use a wildcard (C<*>), for
example, C<2021-09-29T*>, which matches an entire day.

=item *

C<description> - The description of the image (provided during image
creation).

=item *

C<ena-support> - A Boolean that indicates whether enhanced networking
with ENA is enabled.

=item *

C<hypervisor> - The hypervisor type (C<ovm> | C<xen>).

=item *

C<image-allowed> - A Boolean that indicates whether the image meets the
criteria specified for Allowed AMIs.

=item *

C<image-id> - The ID of the image.

=item *

C<image-type> - The image type (C<machine> | C<kernel> | C<ramdisk>).

=item *

C<is-public> - A Boolean that indicates whether the image is public.

=item *

C<kernel-id> - The kernel ID.

=item *

C<manifest-location> - The location of the image manifest.

=item *

C<name> - The name of the AMI (provided during image creation).

=item *

C<owner-alias> - The owner alias (C<amazon> | C<aws-backup-vault> |
C<aws-marketplace>). The valid aliases are defined in an
Amazon-maintained list. This is not the Amazon Web Services account
alias that can be set using the IAM console. We recommend that you use
the B<Owner> request parameter instead of this filter.

=item *

C<owner-id> - The Amazon Web Services account ID of the owner. We
recommend that you use the B<Owner> request parameter instead of this
filter.

=item *

C<platform> - The platform. The only supported value is C<windows>.

=item *

C<product-code> - The product code.

=item *

C<product-code.type> - The type of the product code (C<marketplace>).

=item *

C<ramdisk-id> - The RAM disk ID.

=item *

C<root-device-name> - The device name of the root device volume (for
example, C</dev/sda1>).

=item *

C<root-device-type> - The type of the root device volume (C<ebs> |
C<instance-store>).

=item *

C<source-image-id> - The ID of the source AMI from which the AMI was
created.

=item *

C<source-image-region> - The Region of the source AMI.

=item *

C<source-instance-id> - The ID of the instance that the AMI was created
from if the AMI was created using CreateImage. This filter is
applicable only if the AMI was created using CreateImage
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html).

=item *

C<state> - The state of the image (C<available> | C<pending> |
C<failed>).

=item *

C<state-reason-code> - The reason code for the state change.

=item *

C<state-reason-message> - The message for the state change.

=item *

C<sriov-net-support> - A value of C<simple> indicates that enhanced
networking with the Intel 82599 VF interface is enabled.

=item *

C<tag:E<lt>keyE<gt>> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<virtualization-type> - The virtualization type (C<paravirtual> |
C<hvm>).

=back




=head2 ImageIds => ArrayRef[Str|Undef]

The image IDs.

Default: Describes all images available to you.



=head2 IncludeDeprecated => Bool

Specifies whether to include deprecated AMIs.

Default: No deprecated AMIs are included in the response.

If you are the AMI owner, all deprecated AMIs appear in the response
regardless of what you specify for this parameter.



=head2 IncludeDisabled => Bool

Specifies whether to include disabled AMIs.

Default: No disabled AMIs are included in the response.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 Owners => ArrayRef[Str|Undef]

Scopes the results to images with the specified owners. You can specify
a combination of Amazon Web Services account IDs, C<self>, C<amazon>,
C<aws-backup-vault>, and C<aws-marketplace>. If you omit this
parameter, the results include all images for which you have launch
permissions, regardless of ownership.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImages in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

