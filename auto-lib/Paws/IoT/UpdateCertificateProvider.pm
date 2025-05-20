
package Paws::IoT::UpdateCertificateProvider;
  use Moose;
  has AccountDefaultForOperations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountDefaultForOperations');
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateProviderName', required => 1);
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lambdaFunctionArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCertificateProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate-providers/{certificateProviderName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateCertificateProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCertificateProvider - Arguments for method UpdateCertificateProvider on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificateProvider on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateCertificateProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificateProvider.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateCertificateProviderResponse = $iot->UpdateCertificateProvider(
      CertificateProviderName     => 'MyCertificateProviderName',
      AccountDefaultForOperations => [
        'CreateCertificateFromCsr', ...    # values: CreateCertificateFromCsr
      ],    # OPTIONAL
      LambdaFunctionArn => 'MyCertificateProviderFunctionArn',    # OPTIONAL
    );

    # Results:
    my $CertificateProviderArn =
      $UpdateCertificateProviderResponse->CertificateProviderArn;
    my $CertificateProviderName =
      $UpdateCertificateProviderResponse->CertificateProviderName;

    # Returns a L<Paws::IoT::UpdateCertificateProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateCertificateProvider>

=head1 ATTRIBUTES


=head2 AccountDefaultForOperations => ArrayRef[Str|Undef]

A list of the operations that the certificate provider will use to
generate certificates. Valid value: C<CreateCertificateFromCsr>.



=head2 B<REQUIRED> CertificateProviderName => Str

The name of the certificate provider.



=head2 LambdaFunctionArn => Str

The Lambda function ARN that's associated with the certificate
provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificateProvider in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

