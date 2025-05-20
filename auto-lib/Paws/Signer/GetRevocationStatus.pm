
package Paws::Signer::GetRevocationStatus;
  use Moose;
  has CertificateHashes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'certificateHashes', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'jobArn', required => 1);
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'platformId', required => 1);
  has ProfileVersionArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'profileVersionArn', required => 1);
  has SignatureTimestamp => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'signatureTimestamp', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRevocationStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/revocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::GetRevocationStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetRevocationStatus - Arguments for method GetRevocationStatus on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRevocationStatus on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method GetRevocationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRevocationStatus.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $GetRevocationStatusResponse = $signer->GetRevocationStatus(
      CertificateHashes  => [ 'MyString', ... ],
      JobArn             => 'MyArn',
      PlatformId         => 'MyPlatformId',
      ProfileVersionArn  => 'MyArn',
      SignatureTimestamp => '1970-01-01T01:00:00',

    );

    # Results:
    my $RevokedEntities = $GetRevocationStatusResponse->RevokedEntities;

    # Returns a L<Paws::Signer::GetRevocationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/GetRevocationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateHashes => ArrayRef[Str|Undef]

A list of composite signed hashes that identify certificates.

A certificate identifier consists of a subject certificate TBS hash
(signed by the parent CA) combined with a parent CA TBS hash (signed by
the parent CAE<rsquo>s CA). Root certificates are defined as their own
CA.

The following example shows how to calculate a hash for this parameter
using OpenSSL commands:

C<openssl asn1parse -in childCert.pem -strparse 4 -out childCert.tbs>

C<openssl sha384 E<lt> childCert.tbs -binary E<gt> childCertTbsHash>

C<openssl asn1parse -in parentCert.pem -strparse 4 -out parentCert.tbs>

C<openssl sha384 E<lt> parentCert.tbs -binary E<gt> parentCertTbsHash
xxd -p childCertTbsHash E<gt> certificateHash.hex xxd -p
parentCertTbsHash E<gt>E<gt> certificateHash.hex>

C<cat certificateHash.hex | tr -d '\n'>



=head2 B<REQUIRED> JobArn => Str

The ARN of a signing job.



=head2 B<REQUIRED> PlatformId => Str

The ID of a signing platform.



=head2 B<REQUIRED> ProfileVersionArn => Str

The version of a signing profile.



=head2 B<REQUIRED> SignatureTimestamp => Str

The timestamp of the signature that validates the profile or job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRevocationStatus in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

