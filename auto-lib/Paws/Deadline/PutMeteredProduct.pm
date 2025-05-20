
package Paws::Deadline::PutMeteredProduct;
  use Moose;
  has LicenseEndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'licenseEndpointId', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'productId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMeteredProduct');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::PutMeteredProductResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::PutMeteredProduct - Arguments for method PutMeteredProduct on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMeteredProduct on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method PutMeteredProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMeteredProduct.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $PutMeteredProductResponse = $deadline->PutMeteredProduct(
      LicenseEndpointId => 'MyLicenseEndpointId',
      ProductId         => 'MyMeteredProductId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/PutMeteredProduct>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseEndpointId => Str

The license endpoint ID to add to the metered product.



=head2 B<REQUIRED> ProductId => Str

The product ID to add to the metered product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMeteredProduct in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

