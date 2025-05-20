
package Paws::IoT::DeleteCertificateProvider;
  use Moose;
  has CertificateProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateProviderName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCertificateProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate-providers/{certificateProviderName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteCertificateProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCertificateProvider - Arguments for method DeleteCertificateProvider on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificateProvider on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteCertificateProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificateProvider.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteCertificateProviderResponse = $iot->DeleteCertificateProvider(
      CertificateProviderName => 'MyCertificateProviderName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteCertificateProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateProviderName => Str

The name of the certificate provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificateProvider in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

