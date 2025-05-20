
package Paws::KMS::DescribeKey;
  use Moose;
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DescribeKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeKey - Arguments for method DescribeKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DescribeKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To get details about a KMS key
    # The following example gets metadata for a symmetric encryption KMS key.
    my $DescribeKeyResponse =
      $kms->DescribeKey( 'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab' );

    # Results:
    my $KeyMetadata = $DescribeKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::DescribeKeyResponse> object.
    # To get details about an RSA asymmetric KMS key
    # The following example gets metadata for an asymmetric RSA KMS key used for
    # signing and verification.
    my $DescribeKeyResponse =
      $kms->DescribeKey( 'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab' );

    # Results:
    my $KeyMetadata = $DescribeKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::DescribeKeyResponse> object.
    # To get details about a multi-Region key
    # The following example gets metadata for a multi-Region replica key. This
    # multi-Region key is a symmetric encryption key. DescribeKey returns
    # information about the primary key and all of its replicas.
    my $DescribeKeyResponse =
      $kms->DescribeKey( 'KeyId' =>
'arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab'
      );

    # Results:
    my $KeyMetadata = $DescribeKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::DescribeKeyResponse> object.
    # To get details about an HMAC KMS key
    # The following example gets the metadata of an HMAC KMS key.
    my $DescribeKeyResponse =
      $kms->DescribeKey( 'KeyId' =>
'arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab'
      );

    # Results:
    my $KeyMetadata = $DescribeKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::DescribeKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DescribeKey>

=head1 ATTRIBUTES


=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token)
and Using a grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Describes the specified KMS key.

If you specify a predefined Amazon Web Services alias (an Amazon Web
Services alias with no key ID), KMS associates the alias with an Amazon
Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html##aws-managed-cmk)
and returns its C<KeyId> and C<Arn> in the response.

To specify a KMS key, use its key ID, key ARN, alias name, or alias
ARN. When using an alias name, prefix it with C<"alias/">. To specify a
KMS key in a different Amazon Web Services account, you must use the
key ARN or alias ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey. To get the alias name and alias ARN, use ListAliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

