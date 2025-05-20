
package Paws::KMS::GenerateMac;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has MacAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateMac');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateMacResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateMac - Arguments for method GenerateMac on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateMac on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateMac.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateMac.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To generate an HMAC for a message
    # This example generates an HMAC for a message, an HMAC KMS key, and a MAC
    # algorithm. The algorithm must be supported by the specified HMAC KMS key.
    my $GenerateMacResponse = $kms->GenerateMac(
      'KeyId'        => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'MacAlgorithm' => 'HMAC_SHA_384',
      'Message'      => 'Hello World'
    );

    # Results:
    my $KeyId        = $GenerateMacResponse->KeyId;
    my $Mac          = $GenerateMacResponse->Mac;
    my $MacAlgorithm = $GenerateMacResponse->MacAlgorithm;

    # Returns a L<Paws::KMS::GenerateMacResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateMac>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
in the I<Key Management Service Developer Guide>.



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

The HMAC KMS key to use in the operation. The MAC algorithm computes
the HMAC for the message and the key as described in RFC 2104
(https://datatracker.ietf.org/doc/html/rfc2104).

To identify an HMAC KMS key, use the DescribeKey operation and see the
C<KeySpec> field in the response.



=head2 B<REQUIRED> MacAlgorithm => Str

The MAC algorithm used in the operation.

The algorithm must be compatible with the HMAC KMS key that you
specify. To find the MAC algorithms that your HMAC KMS key supports,
use the DescribeKey operation and see the C<MacAlgorithms> field in the
C<DescribeKey> response.

Valid values are: C<"HMAC_SHA_224">, C<"HMAC_SHA_256">, C<"HMAC_SHA_384">, C<"HMAC_SHA_512">

=head2 B<REQUIRED> Message => Str

The message to be hashed. Specify a message of up to 4,096 bytes.

C<GenerateMac> and VerifyMac do not provide special handling for
message digests. If you generate an HMAC for a hash digest of a
message, you must verify the HMAC of the same hash digest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateMac in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

