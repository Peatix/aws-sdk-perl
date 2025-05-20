
package Paws::IoT::CreateCertificateProvider;
  use Moose;
  has AccountDefaultForOperations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountDefaultForOperations', required => 1);
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateProviderName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lambdaFunctionArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificateProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate-providers/{certificateProviderName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateCertificateProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCertificateProvider - Arguments for method CreateCertificateProvider on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificateProvider on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateCertificateProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificateProvider.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateCertificateProviderResponse = $iot->CreateCertificateProvider(
      AccountDefaultForOperations => [
        'CreateCertificateFromCsr', ...    # values: CreateCertificateFromCsr
      ],
      CertificateProviderName => 'MyCertificateProviderName',
      LambdaFunctionArn       => 'MyCertificateProviderFunctionArn',
      ClientToken             => 'MyClientToken',                     # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CertificateProviderArn =
      $CreateCertificateProviderResponse->CertificateProviderArn;
    my $CertificateProviderName =
      $CreateCertificateProviderResponse->CertificateProviderName;

    # Returns a L<Paws::IoT::CreateCertificateProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateCertificateProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountDefaultForOperations => ArrayRef[Str|Undef]

A list of the operations that the certificate provider will use to
generate certificates. Valid value: C<CreateCertificateFromCsr>.



=head2 B<REQUIRED> CertificateProviderName => Str

The name of the certificate provider.



=head2 ClientToken => Str

A string that you can optionally pass in the
C<CreateCertificateProvider> request to make sure the request is
idempotent.



=head2 B<REQUIRED> LambdaFunctionArn => Str

The ARN of the Lambda function that defines the authentication logic.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the certificate provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateProvider in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

