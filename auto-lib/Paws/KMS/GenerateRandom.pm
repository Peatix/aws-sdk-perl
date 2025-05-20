
package Paws::KMS::GenerateRandom;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');
  has Recipient => (is => 'ro', isa => 'Paws::KMS::RecipientInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateRandom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateRandomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandom - Arguments for method GenerateRandom on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateRandom on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateRandom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateRandom.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To generate random data
    # The following example generates 32 bytes of random data.
    my $GenerateRandomResponse = $kms->GenerateRandom( 'NumberOfBytes' => 32 );

    # Results:
    my $Plaintext = $GenerateRandomResponse->Plaintext;

    # Returns a L<Paws::KMS::GenerateRandomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateRandom>

=head1 ATTRIBUTES


=head2 CustomKeyStoreId => Str

Generates the random byte string in the CloudHSM cluster that is
associated with the specified CloudHSM key store. To find the ID of a
custom key store, use the DescribeCustomKeyStores operation.

External key store IDs are not valid for this parameter. If you specify
the ID of an external key store, C<GenerateRandom> throws an
C<UnsupportedOperationException>.



=head2 NumberOfBytes => Int

The length of the random byte string. This parameter is required.



=head2 Recipient => L<Paws::KMS::RecipientInfo>

A signed attestation document
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc)
from an Amazon Web Services Nitro enclave and the encryption algorithm
to use with the enclave's public key. The only valid encryption
algorithm is C<RSAES_OAEP_SHA_256>.

This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the Amazon Web
Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK.

When you use this parameter, instead of returning plaintext bytes, KMS
encrypts the plaintext bytes under the public key in the attestation
document, and returns the resulting ciphertext in the
C<CiphertextForRecipient> field in the response. This ciphertext can be
decrypted only with the private key in the enclave. The C<Plaintext>
field in the response is null or empty.

For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see How Amazon Web Services Nitro Enclaves
uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateRandom in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

