
package Paws::PaymentCryptography::GetParametersForExport;
  use Moose;
  has KeyMaterialType => (is => 'ro', isa => 'Str', required => 1);
  has SigningKeyAlgorithm => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersForExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::GetParametersForExportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetParametersForExport - Arguments for method GetParametersForExport on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersForExport on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method GetParametersForExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersForExport.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $GetParametersForExportOutput =
      $controlplane . payment-cryptography->GetParametersForExport(
      KeyMaterialType     => 'TR34_KEY_BLOCK',
      SigningKeyAlgorithm => 'TDES_2KEY',

      );

    # Results:
    my $ExportToken = $GetParametersForExportOutput->ExportToken;
    my $ParametersValidUntilTimestamp =
      $GetParametersForExportOutput->ParametersValidUntilTimestamp;
    my $SigningKeyAlgorithm =
      $GetParametersForExportOutput->SigningKeyAlgorithm;
    my $SigningKeyCertificate =
      $GetParametersForExportOutput->SigningKeyCertificate;
    my $SigningKeyCertificateChain =
      $GetParametersForExportOutput->SigningKeyCertificateChain;

  # Returns a L<Paws::PaymentCryptography::GetParametersForExportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/GetParametersForExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyMaterialType => Str

The key block format type (for example, TR-34 or TR-31) to use during
key material export. Export token is only required for a TR-34 key
export, C<TR34_KEY_BLOCK>. Export token is not required for TR-31 key
export.

Valid values are: C<"TR34_KEY_BLOCK">, C<"TR31_KEY_BLOCK">, C<"ROOT_PUBLIC_KEY_CERTIFICATE">, C<"TRUSTED_PUBLIC_KEY_CERTIFICATE">, C<"KEY_CRYPTOGRAM">

=head2 B<REQUIRED> SigningKeyAlgorithm => Str

The signing key algorithm to generate a signing key certificate. This
certificate signs the wrapped key under export within the TR-34 key
block. C<RSA_2048> is the only signing key algorithm allowed.

Valid values are: C<"TDES_2KEY">, C<"TDES_3KEY">, C<"AES_128">, C<"AES_192">, C<"AES_256">, C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersForExport in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

