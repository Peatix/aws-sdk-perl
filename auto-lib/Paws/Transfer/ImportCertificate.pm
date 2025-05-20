
package Paws::Transfer::ImportCertificate;
  use Moose;
  has ActiveDate => (is => 'ro', isa => 'Str');
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InactiveDate => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has Usage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ImportCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportCertificate - Arguments for method ImportCertificate on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCertificate on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ImportCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCertificate.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ImportCertificateResponse = $transfer->ImportCertificate(
      Certificate      => 'MyCertificateBodyType',
      Usage            => 'SIGNING',
      ActiveDate       => '1970-01-01T01:00:00',       # OPTIONAL
      CertificateChain => 'MyCertificateChainType',    # OPTIONAL
      Description      => 'MyDescription',             # OPTIONAL
      InactiveDate     => '1970-01-01T01:00:00',       # OPTIONAL
      PrivateKey       => 'MyPrivateKeyType',          # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CertificateId = $ImportCertificateResponse->CertificateId;

    # Returns a L<Paws::Transfer::ImportCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ImportCertificate>

=head1 ATTRIBUTES


=head2 ActiveDate => Str

An optional date that specifies when the certificate becomes active. If
you do not specify a value, C<ActiveDate> takes the same value as
C<NotBeforeDate>, which is specified by the CA.



=head2 B<REQUIRED> Certificate => Str

=over

=item *

For the CLI, provide a file path for a certificate in URI format. For
example, C<--certificate file://encryption-cert.pem>. Alternatively,
you can provide the raw content.

=item *

For the SDK, specify the raw content of a certificate file. For
example, C<--certificate "`cat encryption-cert.pem`">.

=back

You can provide both the certificate and its chain in this parameter,
without needing to use the C<CertificateChain> parameter. If you use
this parameter for both the certificate and its chain, do not use the
C<CertificateChain> parameter.



=head2 CertificateChain => Str

An optional list of certificates that make up the chain for the
certificate that's being imported.



=head2 Description => Str

A short description that helps identify the certificate.



=head2 InactiveDate => Str

An optional date that specifies when the certificate becomes inactive.
If you do not specify a value, C<InactiveDate> takes the same value as
C<NotAfterDate>, which is specified by the CA.



=head2 PrivateKey => Str

=over

=item *

For the CLI, provide a file path for a private key in URI format. For
example, C<--private-key file://encryption-key.pem>. Alternatively, you
can provide the raw content of the private key file.

=item *

For the SDK, specify the raw content of a private key file. For
example, C<--private-key "`cat encryption-key.pem`">

=back




=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for certificates.



=head2 B<REQUIRED> Usage => Str

Specifies how this certificate is used. It can be used in the following
ways:

=over

=item *

C<SIGNING>: For signing AS2 messages

=item *

C<ENCRYPTION>: For encrypting AS2 messages

=item *

C<TLS>: For securing AS2 communications sent over HTTPS

=back


Valid values are: C<"SIGNING">, C<"ENCRYPTION">, C<"TLS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCertificate in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

