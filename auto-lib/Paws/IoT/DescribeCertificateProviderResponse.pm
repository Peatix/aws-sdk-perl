
package Paws::IoT::DescribeCertificateProviderResponse;
  use Moose;
  has AccountDefaultForOperations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountDefaultForOperations');
  has CertificateProviderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateProviderArn');
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateProviderName');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lambdaFunctionArn');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCertificateProviderResponse

=head1 ATTRIBUTES


=head2 AccountDefaultForOperations => ArrayRef[Str|Undef]

A list of the operations that the certificate provider will use to
generate certificates. Valid value: C<CreateCertificateFromCsr>.


=head2 CertificateProviderArn => Str

The ARN of the certificate provider.


=head2 CertificateProviderName => Str

The name of the certificate provider.


=head2 CreationDate => Str

The date-time string that indicates when the certificate provider was
created.


=head2 LambdaFunctionArn => Str

The Lambda function ARN that's associated with the certificate
provider.


=head2 LastModifiedDate => Str

The date-time string that indicates when the certificate provider was
last updated.


=head2 _request_id => Str


=cut

