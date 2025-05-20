
package Paws::Deadline::ListMeteredProducts;
  use Moose;
  has LicenseEndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'licenseEndpointId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMeteredProducts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListMeteredProductsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListMeteredProducts - Arguments for method ListMeteredProducts on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMeteredProducts on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListMeteredProducts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMeteredProducts.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListMeteredProductsResponse = $deadline->ListMeteredProducts(
      LicenseEndpointId => 'MyLicenseEndpointId',
      MaxResults        => 1,                       # OPTIONAL
      NextToken         => 'MyString',              # OPTIONAL
    );

    # Results:
    my $MeteredProducts = $ListMeteredProductsResponse->MeteredProducts;
    my $NextToken       = $ListMeteredProductsResponse->NextToken;

    # Returns a L<Paws::Deadline::ListMeteredProductsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListMeteredProducts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseEndpointId => Str

The license endpoint ID to include on the list of metered products.



=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMeteredProducts in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

