
package Paws::PrivateNetworks::ListOrders;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::PrivateNetworks::OrderFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NetworkArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkArn', required => 1);
  has StartToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrders');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/orders/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::ListOrdersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListOrders - Arguments for method ListOrders on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrders on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method ListOrders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrders.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $ListOrdersResponse = $private -networks->ListOrders(
      NetworkArn => 'MyArn',
      Filters    => {
        'STATUS' => [ 'MyString', ... ],    # key: values: STATUS, NETWORK_SITE
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      StartToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOrdersResponse->NextToken;
    my $Orders    = $ListOrdersResponse->Orders;

    # Returns a L<Paws::PrivateNetworks::ListOrdersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/ListOrders>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::PrivateNetworks::OrderFilters>

The filters.

=over

=item *

C<NETWORK_SITE> - The Amazon Resource Name (ARN) of the network site.

=item *

C<STATUS> - The status (C<ACKNOWLEDGING> | C<ACKNOWLEDGED> |
C<UNACKNOWLEDGED>).

=back

Filter values are case sensitive. If you specify multiple values for a
filter, the values are joined with an C<OR>, and the request returns
all results that match any of the specified values.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 B<REQUIRED> NetworkArn => Str

The Amazon Resource Name (ARN) of the network.



=head2 StartToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrders in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

