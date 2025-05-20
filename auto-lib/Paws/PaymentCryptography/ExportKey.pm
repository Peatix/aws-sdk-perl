
package Paws::PaymentCryptography::ExportKey;
  use Moose;
  has ExportAttributes => (is => 'ro', isa => 'Paws::PaymentCryptography::ExportAttributes');
  has ExportKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has KeyMaterial => (is => 'ro', isa => 'Paws::PaymentCryptography::ExportKeyMaterial', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::ExportKeyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ExportKey - Arguments for method ExportKey on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportKey on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method ExportKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportKey.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $ExportKeyOutput = $controlplane . payment-cryptography->ExportKey(
      ExportKeyIdentifier => 'MyKeyArnOrKeyAliasType',
      KeyMaterial         => {
        DiffieHellmanTr31KeyBlock => {
          CertificateAuthorityPublicKeyIdentifier =>
            'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
          DerivationData => {
            SharedInformation =>
              'MySharedInformation',     # min: 2, max: 2048; OPTIONAL
          },
          DeriveKeyAlgorithm => 'TDES_2KEY'
          ,    # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
          KeyDerivationFunction => 'NIST_SP800', # values: NIST_SP800, ANSI_X963
          KeyDerivationHashAlgorithm =>
            'SHA_256',    # values: SHA_256, SHA_384, SHA_512
          PrivateKeyIdentifier => 'MyKeyArnOrKeyAliasType', # min: 7, max: 322
          PublicKeyCertificate => 'MyCertificateType',      # min: 1, max: 32768
          KeyBlockHeaders      => {
            KeyExportability => 'EXPORTABLE'
            ,    # values: EXPORTABLE, NON_EXPORTABLE, SENSITIVE; OPTIONAL
            KeyModesOfUse => {
              Decrypt        => 1,    # OPTIONAL
              DeriveKey      => 1,    # OPTIONAL
              Encrypt        => 1,    # OPTIONAL
              Generate       => 1,    # OPTIONAL
              NoRestrictions => 1,    # OPTIONAL
              Sign           => 1,    # OPTIONAL
              Unwrap         => 1,    # OPTIONAL
              Verify         => 1,    # OPTIONAL
              Wrap           => 1,    # OPTIONAL
            },    # OPTIONAL
            KeyVersion     => 'MyKeyVersion',    # min: 2, max: 2; OPTIONAL
            OptionalBlocks => {
              'MyOptionalBlockId' => 'MyOptionalBlockValue'
              ,    # key: min: 2, max: 2, value: min: 1, max: 108
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        KeyCryptogram => {
          CertificateAuthorityPublicKeyIdentifier =>
            'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
          WrappingKeyCertificate => 'MyCertificateType',    # min: 1, max: 32768
          WrappingSpec           => 'RSA_OAEP_SHA_256'
          ,    # values: RSA_OAEP_SHA_256, RSA_OAEP_SHA_512; OPTIONAL
        },    # OPTIONAL
        Tr31KeyBlock => {
          WrappingKeyIdentifier => 'MyKeyArnOrKeyAliasType',  # min: 7, max: 322
          KeyBlockHeaders       => {
            KeyExportability => 'EXPORTABLE'
            ,    # values: EXPORTABLE, NON_EXPORTABLE, SENSITIVE; OPTIONAL
            KeyModesOfUse => {
              Decrypt        => 1,    # OPTIONAL
              DeriveKey      => 1,    # OPTIONAL
              Encrypt        => 1,    # OPTIONAL
              Generate       => 1,    # OPTIONAL
              NoRestrictions => 1,    # OPTIONAL
              Sign           => 1,    # OPTIONAL
              Unwrap         => 1,    # OPTIONAL
              Verify         => 1,    # OPTIONAL
              Wrap           => 1,    # OPTIONAL
            },    # OPTIONAL
            KeyVersion     => 'MyKeyVersion',    # min: 2, max: 2; OPTIONAL
            OptionalBlocks => {
              'MyOptionalBlockId' => 'MyOptionalBlockValue'
              ,    # key: min: 2, max: 2, value: min: 1, max: 108
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Tr34KeyBlock => {
          CertificateAuthorityPublicKeyIdentifier =>
            'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
          ExportToken            => 'MyExportTokenId',
          KeyBlockFormat         => 'X9_TR34_2012',       # values: X9_TR34_2012
          WrappingKeyCertificate => 'MyCertificateType',  # min: 1, max: 32768
          KeyBlockHeaders        => {
            KeyExportability => 'EXPORTABLE'
            ,    # values: EXPORTABLE, NON_EXPORTABLE, SENSITIVE; OPTIONAL
            KeyModesOfUse => {
              Decrypt        => 1,    # OPTIONAL
              DeriveKey      => 1,    # OPTIONAL
              Encrypt        => 1,    # OPTIONAL
              Generate       => 1,    # OPTIONAL
              NoRestrictions => 1,    # OPTIONAL
              Sign           => 1,    # OPTIONAL
              Unwrap         => 1,    # OPTIONAL
              Verify         => 1,    # OPTIONAL
              Wrap           => 1,    # OPTIONAL
            },    # OPTIONAL
            KeyVersion     => 'MyKeyVersion',    # min: 2, max: 2; OPTIONAL
            OptionalBlocks => {
              'MyOptionalBlockId' => 'MyOptionalBlockValue'
              ,    # key: min: 2, max: 2, value: min: 1, max: 108
            },    # OPTIONAL
          },    # OPTIONAL
          RandomNonce =>
            'MyEvenHexLengthBetween16And32',    # min: 16, max: 32; OPTIONAL
        },    # OPTIONAL
      },
      ExportAttributes => {
        ExportDukptInitialKey => {
          KeySerialNumber => 'MyHexLength20Or24',    # min: 20, max: 24

        },    # OPTIONAL
        KeyCheckValueAlgorithm => 'CMAC',   # values: CMAC, ANSI_X9_24; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WrappedKey = $ExportKeyOutput->WrappedKey;

    # Returns a L<Paws::PaymentCryptography::ExportKeyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/ExportKey>

=head1 ATTRIBUTES


=head2 ExportAttributes => L<Paws::PaymentCryptography::ExportAttributes>

The attributes for IPEK generation during export.



=head2 B<REQUIRED> ExportKeyIdentifier => Str

The C<KeyARN> of the key under export from Amazon Web Services Payment
Cryptography.



=head2 B<REQUIRED> KeyMaterial => L<Paws::PaymentCryptography::ExportKeyMaterial>

The key block format type, for example, TR-34 or TR-31, to use during
key material export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportKey in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

