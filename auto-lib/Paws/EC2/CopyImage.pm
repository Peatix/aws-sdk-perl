
package Paws::EC2::CopyImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CopyImageTags => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationOutpostArn => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotCopyCompletionDurationMinutes => (is => 'ro', isa => 'Int');
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopyImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImage - Arguments for method CopyImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CopyImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To copy an AMI to another region
# This example copies the specified AMI from the us-east-1 region to the current
# region.
    my $CopyImageResult = $ec2->CopyImage(
      'Description'   => '',
      'Name'          => 'My server',
      'SourceImageId' => 'ami-5731123e',
      'SourceRegion'  => 'us-east-1'
    );

    # Results:
    my $ImageId = $CopyImageResult->ImageId;

    # Returns a L<Paws::EC2::CopyImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopyImage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 CopyImageTags => Bool

Indicates whether to include your user-defined AMI tags when copying
the AMI.

The following tags will not be copied:

=over

=item *

System tags (prefixed with C<aws:>)

=item *

For public and shared AMIs, user-defined tags that are attached by
other Amazon Web Services accounts

=back

Default: Your user-defined AMI tags are not copied.



=head2 Description => Str

A description for the new AMI in the destination Region.



=head2 DestinationOutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost to which to copy the AMI.
Only specify this parameter when copying an AMI from an Amazon Web
Services Region to an Outpost. The AMI must be in the Region of the
destination Outpost. You cannot copy an AMI from an Outpost to a
Region, from one Outpost to another, or within the same Outpost.

For more information, see Copy AMIs from an Amazon Web Services Region
to an Outpost
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#copy-amis)
in the I<Amazon EBS User Guide>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the destination snapshots of the copied image should
be encrypted. You can encrypt a copy of an unencrypted snapshot, but
you cannot create an unencrypted copy of an encrypted snapshot. The
default KMS key for Amazon EBS is used unless you specify a non-default
Key Management Service (KMS) KMS key using C<KmsKeyId>. For more
information, see Use encryption with EBS-backed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html)
in the I<Amazon EC2 User Guide>.



=head2 KmsKeyId => Str

The identifier of the symmetric Key Management Service (KMS) KMS key to
use when creating encrypted volumes. If this parameter is not
specified, your Amazon Web Services managed KMS key for Amazon EBS is
used. If you specify a KMS key, you must also set the encrypted state
to C<true>.

You can specify a KMS key using any of the following:

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
Therefore, if you specify an identifier that is not valid, the action
can appear to complete, but eventually fails.

The specified KMS key must exist in the destination Region.

Amazon EBS does not support asymmetric KMS keys.



=head2 B<REQUIRED> Name => Str

The name of the new AMI in the destination Region.



=head2 SnapshotCopyCompletionDurationMinutes => Int

Specify a completion duration, in 15 minute increments, to initiate a
time-based AMI copy. The specified completion duration applies to each
of the snapshots associated with the AMI. Each snapshot associated with
the AMI will be completed within the specified completion duration,
with copy throughput automatically adjusted for each snapshot based on
its size to meet the timing target.

If you do not specify a value, the AMI copy operation is completed on a
best-effort basis.

For more information, see Time-based copies
(https://docs.aws.amazon.com/ebs/latest/userguide/time-based-copies.html).



=head2 B<REQUIRED> SourceImageId => Str

The ID of the AMI to copy.



=head2 B<REQUIRED> SourceRegion => Str

The name of the Region that contains the AMI to copy.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the new AMI and new snapshots. You can tag the
AMI, the snapshots, or both.

=over

=item *

To tag the new AMI, the value for C<ResourceType> must be C<image>.

=item *

To tag the new snapshots, the value for C<ResourceType> must be
C<snapshot>. The same tag is applied to all the new snapshots.

=back

If you specify other values for C<ResourceType>, the request fails.

To tag an AMI or snapshot after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

