
package Paws::ACMPCA::CreateCertificateAuthority;
  use Moose;
  has CertificateAuthorityConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::CertificateAuthorityConfiguration', required => 1);
  has CertificateAuthorityType => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has KeyStorageSecurityStandard => (is => 'ro', isa => 'Str');
  has RevocationConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::RevocationConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ACMPCA::Tag]');
  has UsageMode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::CreateCertificateAuthorityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreateCertificateAuthority - Arguments for method CreateCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method CreateCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $CreateCertificateAuthorityResponse =
      $acm -pca->CreateCertificateAuthority(
      CertificateAuthorityConfiguration => {
        KeyAlgorithm => 'RSA_2048'
        , # values: RSA_2048, RSA_3072, RSA_4096, EC_prime256v1, EC_secp384r1, EC_secp521r1, SM2
        SigningAlgorithm => 'SHA256WITHECDSA'
        , # values: SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA, SM3WITHSM2
        Subject => {
          CommonName       => 'MyString64',           # max: 64; OPTIONAL
          Country          => 'MyCountryCodeString',  # min: 2, max: 2; OPTIONAL
          CustomAttributes => [
            {
              ObjectIdentifier => 'MyCustomObjectIdentifier', # max: 64
              Value            => 'MyString1To256',           # min: 1, max: 256

            },
            ...
          ],    # min: 1, max: 150; OPTIONAL
          DistinguishedNameQualifier =>
            'MyASN1PrintableString64',    # max: 64; OPTIONAL
          GenerationQualifier => 'MyString3',               # max: 3; OPTIONAL
          GivenName           => 'MyString16',              # max: 16; OPTIONAL
          Initials            => 'MyString5',               # max: 5; OPTIONAL
          Locality            => 'MyString128',             # max: 128; OPTIONAL
          Organization        => 'MyString64',              # max: 64; OPTIONAL
          OrganizationalUnit  => 'MyString64',              # max: 64; OPTIONAL
          Pseudonym           => 'MyString128',             # max: 128; OPTIONAL
          SerialNumber        => 'MyASN1PrintableString64', # max: 64; OPTIONAL
          State               => 'MyString128',             # max: 128; OPTIONAL
          Surname             => 'MyString40',              # max: 40; OPTIONAL
          Title               => 'MyString64',              # max: 64; OPTIONAL
        },
        CsrExtensions => {
          KeyUsage => {
            CRLSign          => 1,    # OPTIONAL
            DataEncipherment => 1,    # OPTIONAL
            DecipherOnly     => 1,    # OPTIONAL
            DigitalSignature => 1,    # OPTIONAL
            EncipherOnly     => 1,    # OPTIONAL
            KeyAgreement     => 1,    # OPTIONAL
            KeyCertSign      => 1,    # OPTIONAL
            KeyEncipherment  => 1,    # OPTIONAL
            NonRepudiation   => 1,    # OPTIONAL
          },    # OPTIONAL
          SubjectInformationAccess => [
            {
              AccessLocation => {
                DirectoryName => {
                  CommonName => 'MyString64',         # max: 64; OPTIONAL
                  Country => 'MyCountryCodeString',   # min: 2, max: 2; OPTIONAL
                  CustomAttributes => [
                    {
                      ObjectIdentifier => 'MyCustomObjectIdentifier',  # max: 64
                      Value            => 'MyString1To256',   # min: 1, max: 256

                    },
                    ...
                  ],    # min: 1, max: 150; OPTIONAL
                  DistinguishedNameQualifier =>
                    'MyASN1PrintableString64',    # max: 64; OPTIONAL
                  GenerationQualifier => 'MyString3',      # max: 3; OPTIONAL
                  GivenName           => 'MyString16',     # max: 16; OPTIONAL
                  Initials            => 'MyString5',      # max: 5; OPTIONAL
                  Locality            => 'MyString128',    # max: 128; OPTIONAL
                  Organization        => 'MyString64',     # max: 64; OPTIONAL
                  OrganizationalUnit  => 'MyString64',     # max: 64; OPTIONAL
                  Pseudonym           => 'MyString128',    # max: 128; OPTIONAL
                  SerialNumber => 'MyASN1PrintableString64', # max: 64; OPTIONAL
                  State        => 'MyString128',    # max: 128; OPTIONAL
                  Surname      => 'MyString40',     # max: 40; OPTIONAL
                  Title        => 'MyString64',     # max: 64; OPTIONAL
                },
                DnsName      => 'MyString253',      # max: 253; OPTIONAL
                EdiPartyName => {
                  PartyName    => 'MyString256',    # max: 256
                  NameAssigner => 'MyString256',    # max: 256
                },    # OPTIONAL
                IpAddress => 'MyString39',    # max: 39; OPTIONAL
                OtherName => {
                  TypeId => 'MyCustomObjectIdentifier',    # max: 64
                  Value  => 'MyString256',                 # max: 256

                },    # OPTIONAL
                RegisteredId => 'MyCustomObjectIdentifier',    # max: 64
                Rfc822Name   => 'MyString256',                 # max: 256
                UniformResourceIdentifier => 'MyString253', # max: 253; OPTIONAL
              },
              AccessMethod => {
                AccessMethodType => 'CA_REPOSITORY'
                , # values: CA_REPOSITORY, RESOURCE_PKI_MANIFEST, RESOURCE_PKI_NOTIFY; OPTIONAL
                CustomObjectIdentifier => 'MyCustomObjectIdentifier',  # max: 64
              },

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },
      CertificateAuthorityType   => 'ROOT',
      IdempotencyToken           => 'MyIdempotencyToken',             # OPTIONAL
      KeyStorageSecurityStandard => 'FIPS_140_2_LEVEL_2_OR_HIGHER',   # OPTIONAL
      RevocationConfiguration    => {
        CrlConfiguration => {
          Enabled                                    => 1,            # OPTIONAL
          CrlDistributionPointExtensionConfiguration => {
            OmitExtension => 1,                                       # OPTIONAL

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
          Enabled         => 1,                  # OPTIONAL
          OcspCustomCname => 'MyCnameString',    # max: 253; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UsageMode => 'GENERAL_PURPOSE',    # OPTIONAL
      );

    # Results:
    my $CertificateAuthorityArn =
      $CreateCertificateAuthorityResponse->CertificateAuthorityArn;

    # Returns a L<Paws::ACMPCA::CreateCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/CreateCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityConfiguration => L<Paws::ACMPCA::CertificateAuthorityConfiguration>

Name and bit size of the private key algorithm, the name of the signing
algorithm, and X.500 certificate subject information.



=head2 B<REQUIRED> CertificateAuthorityType => Str

The type of the certificate authority.

Valid values are: C<"ROOT">, C<"SUBORDINATE">

=head2 IdempotencyToken => Str

Custom string that can be used to distinguish between calls to the
B<CreateCertificateAuthority> action. Idempotency tokens for
B<CreateCertificateAuthority> time out after five minutes. Therefore,
if you call B<CreateCertificateAuthority> multiple times with the same
idempotency token within five minutes, Amazon Web Services Private CA
recognizes that you are requesting only certificate authority and will
issue only one. If you change the idempotency token for each call,
Amazon Web Services Private CA recognizes that you are requesting
multiple certificate authorities.



=head2 KeyStorageSecurityStandard => Str

Specifies a cryptographic key management compliance standard used for
handling CA keys.

Default: FIPS_140_2_LEVEL_3_OR_HIGHER

Some Amazon Web Services Regions do not support the default. When
creating a CA in these Regions, you must provide
C<FIPS_140_2_LEVEL_2_OR_HIGHER> as the argument for
C<KeyStorageSecurityStandard>. Failure to do this results in an
C<InvalidArgsException> with the message, "A certificate authority
cannot be created in this region with the specified security standard."

For information about security standard support in various Regions, see
Storage and security compliance of Amazon Web Services Private CA
private keys
(https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).

Valid values are: C<"FIPS_140_2_LEVEL_2_OR_HIGHER">, C<"FIPS_140_2_LEVEL_3_OR_HIGHER">, C<"CCPC_LEVEL_1_OR_HIGHER">

=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Contains information to enable support for Online Certificate Status
Protocol (OCSP), certificate revocation list (CRL), both protocols, or
neither. By default, both certificate validation mechanisms are
disabled.

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

For more information, see the OcspConfiguration
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html)
and CrlConfiguration
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html)
types.



=head2 Tags => ArrayRef[L<Paws::ACMPCA::Tag>]

Key-value pairs that will be attached to the new private CA. You can
associate up to 50 tags with a private CA. For information using tags
with IAM to manage permissions, see Controlling Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).



=head2 UsageMode => Str

Specifies whether the CA issues general-purpose certificates that
typically require a revocation mechanism, or short-lived certificates
that may optionally omit revocation because they expire quickly.
Short-lived certificate validity is limited to seven days.

The default value is GENERAL_PURPOSE.

Valid values are: C<"GENERAL_PURPOSE">, C<"SHORT_LIVED_CERTIFICATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

