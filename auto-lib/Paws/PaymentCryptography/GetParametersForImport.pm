
package Paws::PaymentCryptography::GetParametersForImport;
  use Moose;
  has KeyMaterialType => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeyAlgorithm => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersForImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::GetParametersForImportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetParametersForImport - Arguments for method GetParametersForImport on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersForImport on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method GetParametersForImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersForImport.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $GetParametersForImportOutput =
      $controlplane . payment-cryptography->GetParametersForImport(
      KeyMaterialType      => 'TR34_KEY_BLOCK',
      WrappingKeyAlgorithm => 'TDES_2KEY',

      );

    # Results:
    my $ImportToken = $GetParametersForImportOutput->ImportToken;
    my $ParametersValidUntilTimestamp =
      $GetParametersForImportOutput->ParametersValidUntilTimestamp;
    my $WrappingKeyAlgorithm =
      $GetParametersForImportOutput->WrappingKeyAlgorithm;
    my $WrappingKeyCertificate =
      $GetParametersForImportOutput->WrappingKeyCertificate;
    my $WrappingKeyCertificateChain =
      $GetParametersForImportOutput->WrappingKeyCertificateChain;

  # Returns a L<Paws::PaymentCryptography::GetParametersForImportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/GetParametersForImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyMaterialType => Str

The method to use for key material import. Import token is only
required for TR-34 WrappedKeyBlock (C<TR34_KEY_BLOCK>) and RSA
WrappedKeyCryptogram (C<KEY_CRYPTOGRAM>).

Import token is not required for TR-31, root public key cerificate or
trusted public key certificate.

Valid values are: C<"TR34_KEY_BLOCK">, C<"TR31_KEY_BLOCK">, C<"ROOT_PUBLIC_KEY_CERTIFICATE">, C<"TRUSTED_PUBLIC_KEY_CERTIFICATE">, C<"KEY_CRYPTOGRAM">

=head2 B<REQUIRED> WrappingKeyAlgorithm => Str

The wrapping key algorithm to generate a wrapping key certificate. This
certificate wraps the key under import.

At this time, C<RSA_2048> is the allowed algorithm for TR-34
WrappedKeyBlock import. Additionally, C<RSA_2048>, C<RSA_3072>,
C<RSA_4096> are the allowed algorithms for RSA WrappedKeyCryptogram
import.

Valid values are: C<"TDES_2KEY">, C<"TDES_3KEY">, C<"AES_128">, C<"AES_192">, C<"AES_256">, C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersForImport in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

