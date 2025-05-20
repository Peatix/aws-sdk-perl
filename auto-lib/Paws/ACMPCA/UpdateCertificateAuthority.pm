
package Paws::ACMPCA::UpdateCertificateAuthority;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has RevocationConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::RevocationConfiguration');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::UpdateCertificateAuthority - Arguments for method UpdateCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method UpdateCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->UpdateCertificateAuthority(
      CertificateAuthorityArn => 'MyArn',
      RevocationConfiguration => {
        CrlConfiguration => {
          Enabled                                    => 1,
          CrlDistributionPointExtensionConfiguration => {
            OmitExtension => 1,

          },    # OPTIONAL
          CrlType => 'COMPLETE',    # values: COMPLETE, PARTITIONED; OPTIONAL
          CustomCname      => 'MyCnameString',     # max: 253; OPTIONAL
          CustomPath       => 'MyCrlPathString',   # max: 253; OPTIONAL
          ExpirationInDays => 1,                   # min: 1, max: 5000; OPTIONAL
          S3BucketName => 'MyS3BucketName3To255',  # min: 3, max: 255; OPTIONAL
          S3ObjectAcl  => 'PUBLIC_READ'
          ,    # values: PUBLIC_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
        },    # OPTIONAL
        OcspConfiguration => {
          Enabled         => 1,
          OcspCustomCname => 'MyCnameString',    # max: 253; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Status => 'CREATING',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/UpdateCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

Amazon Resource Name (ARN) of the private CA that issued the
certificate to be revoked. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Contains information to enable support for Online Certificate Status
Protocol (OCSP), certificate revocation list (CRL), both protocols, or
neither. If you don't supply this parameter, existing capibilites
remain unchanged. For more information, see the OcspConfiguration
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html)
and CrlConfiguration
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html)
types.

The following requirements apply to revocation configurations.

=over

=item *

A configuration disabling CRLs or OCSP must contain only the
C<Enabled=False> parameter, and will fail if other parameters such as
C<CustomCname> or C<ExpirationInDays> are included.

=item *

In a CRL configuration, the C<S3BucketName> parameter must conform to
Amazon S3 bucket naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).

=item *

A configuration containing a custom Canonical Name (CNAME) parameter
for CRLs or OCSP must conform to RFC2396
(https://www.ietf.org/rfc/rfc2396.txt) restrictions on the use of
special characters in a CNAME.

=item *

In a CRL or OCSP configuration, the value of a CNAME parameter must not
include a protocol prefix such as "http://" or "https://".

=back

If you update the C<S3BucketName> of CrlConfiguration
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html),
you can break revocation for existing certificates. In other words, if
you call UpdateCertificateAuthority
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html)
to update the CRL configuration's S3 bucket name, Amazon Web Services
Private CA only writes CRLs to the new S3 bucket. Certificates issued
prior to this point will have the old S3 bucket name in your CRL
Distribution Point (CDP) extension, essentially breaking revocation. If
you must update the S3 bucket, you'll need to reissue old certificates
to keep the revocation working. Alternatively, you can use a
CustomCname
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html#privateca-Type-CrlConfiguration-CustomCname)
in your CRL configuration if you might need to change the S3 bucket
name in the future.



=head2 Status => Str

Status of your private CA.

Valid values are: C<"CREATING">, C<"PENDING_CERTIFICATE">, C<"ACTIVE">, C<"DELETED">, C<"DISABLED">, C<"EXPIRED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

