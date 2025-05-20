
package Paws::PrivateNetworks::ListNetworks;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has StartToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNetworks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/networks/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::ListNetworksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListNetworks - Arguments for method ListNetworks on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNetworks on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method ListNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNetworks.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $ListNetworksResponse = $private -networks->ListNetworks(
      Filters => {
        'STATUS' => [ 'MyString', ... ],    # key: values: STATUS
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      StartToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Networks  = $ListNetworksResponse->Networks;
    my $NextToken = $ListNetworksResponse->NextToken;

    # Returns a L<Paws::PrivateNetworks::ListNetworksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/ListNetworks>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::PrivateNetworks::NetworkFilters>

The filters.

=over

=item *

C<STATUS> - The status (C<AVAILABLE> | C<CREATED> | C<DELETED> |
C<DEPROVISIONING> | C<PROVISIONING>).

=back

Filter values are case sensitive. If you specify multiple values for a
filter, the values are joined with an C<OR>, and the request returns
all results that match any of the specified values.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 StartToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNetworks in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

