
package Paws::KMS::ReplicateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');
  has ReplicaRegion => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplicateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReplicateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReplicateKey - Arguments for method ReplicateKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplicateKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ReplicateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplicateKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
# To replicate a multi-Region key in a different AWS Region
# This example creates a multi-Region replica key in us-west-2 of a multi-Region
# primary key in us-east-1.
    my $ReplicateKeyResponse = $kms->ReplicateKey(
      'KeyId' =>
'arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab',
      'ReplicaRegion' => 'us-west-2'
    );

    # Results:
    my $ReplicaKeyMetadata = $ReplicateKeyResponse->ReplicaKeyMetadata;
    my $ReplicaPolicy      = $ReplicateKeyResponse->ReplicaPolicy;
    my $ReplicaTags        = $ReplicateKeyResponse->ReplicaTags;

    # Returns a L<Paws::KMS::ReplicateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ReplicateKey>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

Skips ("bypasses") the key policy lockout safety check. The default
value is false.

Setting this value to true increases the risk that the KMS key becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, see Default key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key)
in the I<Key Management Service Developer Guide>.

Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent PutKeyPolicy
(https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html)
request on the KMS key.



=head2 Description => Str

A description of the KMS key. The default value is an empty string (no
description).

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

The description is not a shared property of multi-Region keys. You can
specify the same description or a different description for each key in
a set of related multi-Region keys. KMS does not synchronize this
property.



=head2 B<REQUIRED> KeyId => Str

Identifies the multi-Region primary key that is being replicated. To
determine whether a KMS key is a multi-Region primary key, use the
DescribeKey operation to check the value of the C<MultiRegionKeyType>
property.

Specify the key ID or key ARN of a multi-Region primary key.

For example:

=over

=item *

Key ID: C<mrk-1234abcd12ab34cd56ef1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.



=head2 Policy => Str

The key policy to attach to the KMS key. This parameter is optional. If
you do not provide a key policy, KMS attaches the default key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default)
to the KMS key.

The key policy is not a shared property of multi-Region keys. You can
specify the same key policy or a different key policy for each key in a
set of related multi-Region keys. KMS does not synchronize this
property.

If you provide a key policy, it must meet the following criteria:

=over

=item *

The key policy must allow the calling principal to make a subsequent
C<PutKeyPolicy> request on the KMS key. This reduces the risk that the
KMS key becomes unmanageable. For more information, see Default key
policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key)
in the I<Key Management Service Developer Guide>. (To omit this
condition, set C<BypassPolicyLockoutSafetyCheck> to true.)

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to KMS. When
you create a new Amazon Web Services principal, you might need to
enforce a delay before including the new principal in a key policy
because the new principal might not be immediately visible to KMS. For
more information, see Changes that I make are not always immediately
visible
(https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<Amazon Web Services Identity and Access Management User
Guide>.

=back

A key policy document can include only the following characters:

=over

=item *

Printable ASCII characters from the space character (C<\u0020>) through
the end of the ASCII character range.

=item *

Printable characters in the Basic Latin and Latin-1 Supplement
character set (through C<\u00FF>).

=item *

The tab (C<\u0009>), line feed (C<\u000A>), and carriage return
(C<\u000D>) special characters

=back

For information about key policies, see Key policies in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<Key Management Service Developer Guide>. For help writing and
formatting a JSON policy document, see the IAM JSON Policy Reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the I< I<Identity and Access Management User Guide> >.



=head2 B<REQUIRED> ReplicaRegion => Str

The Region ID of the Amazon Web Services Region for this replica key.

Enter the Region ID, such as C<us-east-1> or C<ap-southeast-2>. For a
list of Amazon Web Services Regions in which KMS is supported, see KMS
service endpoints
(https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region) in
the I<Amazon Web Services General Reference>.

HMAC KMS keys are not supported in all Amazon Web Services Regions. If
you try to replicate an HMAC KMS key in an Amazon Web Services Region
in which HMAC keys are not supported, the C<ReplicateKey> operation
returns an C<UnsupportedOperationException>. For a list of Regions in
which HMAC KMS keys are supported, see HMAC keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the I<Key Management Service Developer Guide>.

The replica must be in a different Amazon Web Services Region than its
primary key and other replicas of that primary key, but in the same
Amazon Web Services partition. KMS must be available in the replica
Region. If the Region is not enabled by default, the Amazon Web
Services account must be enabled in the Region. For information about
Amazon Web Services partitions, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>. For information about
enabling and disabling Regions, see Enabling a Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable)
and Disabling a Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable)
in the I<Amazon Web Services General Reference>.



=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

Assigns one or more tags to the replica key. Use this parameter to tag
the KMS key when it is created. To tag an existing KMS key, use the
TagResource operation.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

To use this parameter, you must have kms:TagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
permission in an IAM policy.

Tags are not a shared property of multi-Region keys. You can specify
the same tags or different tags for each key in a set of related
multi-Region keys. KMS does not synchronize this property.

Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required, but the tag value can be an empty (null)
string. You cannot have more than one tag on a KMS key with the same
tag key. If you specify an existing tag key with a different tag value,
KMS replaces the current tag value with the specified one.

When you add tags to an Amazon Web Services resource, Amazon Web
Services generates a cost allocation report with usage and costs
aggregated by tags. Tags can also be used to control access to a KMS
key. For details, see Tagging Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplicateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

