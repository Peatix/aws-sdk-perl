
package Paws::KMS::PutKeyPolicy;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutKeyPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::PutKeyPolicy - Arguments for method PutKeyPolicy on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutKeyPolicy on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method PutKeyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutKeyPolicy.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To attach a key policy to a KMS key
    # The following example attaches a key policy to the specified KMS key.
    $kms->PutKeyPolicy(
      'KeyId'  => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'Policy' => '{
    "Version": "2012-10-17",
    "Id": "custom-policy-2016-12-07",
    "Statement": [
        {
            "Sid": "Enable IAM User Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:root"
            },
            "Action": "kms:*",
            "Resource": "*"
        },
        {
            "Sid": "Allow access for Key Administrators",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::111122223333:user/ExampleAdminUser",
                    "arn:aws:iam::111122223333:role/ExampleAdminRole"
                ]
            },
            "Action": [
                "kms:Create*",
                "kms:Describe*",
                "kms:Enable*",
                "kms:List*",
                "kms:Put*",
                "kms:Update*",
                "kms:Revoke*",
                "kms:Disable*",
                "kms:Get*",
                "kms:Delete*",
                "kms:ScheduleKeyDeletion",
                "kms:CancelKeyDeletion"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow use of the key",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:Encrypt",
                "kms:Decrypt",
                "kms:ReEncrypt*",
                "kms:GenerateDataKey*",
                "kms:DescribeKey"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow attachment of persistent resources",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:CreateGrant",
                "kms:ListGrants",
                "kms:RevokeGrant"
            ],
            "Resource": "*",
            "Condition": {
                "Bool": {
                    "kms:GrantIsForAWSResource": "true"
                }
            }
        }
    ]
}
',
      'PolicyName' => 'default'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/PutKeyPolicy>

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



=head2 B<REQUIRED> KeyId => Str

Sets the key policy on the specified KMS key.

Specify the key ID or key ARN of the KMS key.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.



=head2 B<REQUIRED> Policy => Str

The key policy to attach to the KMS key.

The key policy must meet the following criteria:

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
in the I<Key Management Service Developer Guide>.For help writing and
formatting a JSON policy document, see the IAM JSON Policy Reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the I< I<Identity and Access Management User Guide> >.



=head2 PolicyName => Str

The name of the key policy. If no policy name is specified, the default
value is C<default>. The only valid value is C<default>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutKeyPolicy in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

