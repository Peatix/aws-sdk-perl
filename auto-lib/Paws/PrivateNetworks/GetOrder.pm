
package Paws::PrivateNetworks::GetOrder;
  use Moose;
  has OrderArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'orderArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/orders/{orderArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::GetOrderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetOrder - Arguments for method GetOrder on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrder on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method GetOrder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrder.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $GetOrderResponse = $private -networks->GetOrder(
      OrderArn => 'MyArn',

    );

    # Results:
    my $Order = $GetOrderResponse->Order;
    my $Tags  = $GetOrderResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::GetOrderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/GetOrder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrderArn => Str

The Amazon Resource Name (ARN) of the order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrder in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

