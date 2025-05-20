
package Paws::WorkSpacesWeb::GetTrustStoreCertificate;
  use Moose;
  has Thumbprint => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thumbprint', required => 1);
  has TrustStoreArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trustStoreArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrustStoreCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/trustStores/{trustStoreArn+}/certificate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::GetTrustStoreCertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetTrustStoreCertificate - Arguments for method GetTrustStoreCertificate on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrustStoreCertificate on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method GetTrustStoreCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrustStoreCertificate.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $GetTrustStoreCertificateResponse =
      $workspaces -web->GetTrustStoreCertificate(
      Thumbprint    => 'MyCertificateThumbprint',
      TrustStoreArn => 'MyARN',

      );

    # Results:
    my $Certificate   = $GetTrustStoreCertificateResponse->Certificate;
    my $TrustStoreArn = $GetTrustStoreCertificateResponse->TrustStoreArn;

    # Returns a L<Paws::WorkSpacesWeb::GetTrustStoreCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/GetTrustStoreCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Thumbprint => Str

The thumbprint of the trust store certificate.



=head2 B<REQUIRED> TrustStoreArn => Str

The ARN of the trust store certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrustStoreCertificate in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

