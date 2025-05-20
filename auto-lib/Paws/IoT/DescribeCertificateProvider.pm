
package Paws::IoT::DescribeCertificateProvider;
  use Moose;
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateProviderName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificateProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate-providers/{certificateProviderName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeCertificateProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCertificateProvider - Arguments for method DescribeCertificateProvider on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificateProvider on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeCertificateProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificateProvider.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeCertificateProviderResponse = $iot->DescribeCertificateProvider(
      CertificateProviderName => 'MyCertificateProviderName',

    );

    # Results:
    my $AccountDefaultForOperations =
      $DescribeCertificateProviderResponse->AccountDefaultForOperations;
    my $CertificateProviderArn =
      $DescribeCertificateProviderResponse->CertificateProviderArn;
    my $CertificateProviderName =
      $DescribeCertificateProviderResponse->CertificateProviderName;
    my $CreationDate = $DescribeCertificateProviderResponse->CreationDate;
    my $LambdaFunctionArn =
      $DescribeCertificateProviderResponse->LambdaFunctionArn;
    my $LastModifiedDate =
      $DescribeCertificateProviderResponse->LastModifiedDate;

    # Returns a L<Paws::IoT::DescribeCertificateProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeCertificateProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateProviderName => Str

The name of the certificate provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificateProvider in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

