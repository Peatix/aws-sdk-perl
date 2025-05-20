
package Paws::NetworkManager::GetNetworkRoutes;
  use Moose;
  has DestinationFilters => (is => 'ro', isa => 'Paws::NetworkManager::FilterMap');
  has ExactCidrMatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LongestPrefixMatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RouteTableIdentifier => (is => 'ro', isa => 'Paws::NetworkManager::RouteTableIdentifier', required => 1);
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetOfMatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupernetOfMatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNetworkRoutes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/network-routes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetNetworkRoutesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkRoutes - Arguments for method GetNetworkRoutes on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNetworkRoutes on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetNetworkRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNetworkRoutes.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetNetworkRoutesResponse = $networkmanager->GetNetworkRoutes(
      GlobalNetworkId      => 'MyGlobalNetworkId',
      RouteTableIdentifier => {
        CoreNetworkNetworkFunctionGroup => {
          CoreNetworkId => 'MyCoreNetworkId',        # max: 50; OPTIONAL
          EdgeLocation  => 'MyExternalRegionCode',   # min: 1, max: 63; OPTIONAL
          NetworkFunctionGroupName =>
            'MyConstrainedString',                   # max: 256; OPTIONAL
        },    # OPTIONAL
        CoreNetworkSegmentEdge => {
          CoreNetworkId => 'MyCoreNetworkId',        # max: 50; OPTIONAL
          EdgeLocation  => 'MyExternalRegionCode',   # min: 1, max: 63; OPTIONAL
          SegmentName   => 'MyConstrainedString',    # max: 256; OPTIONAL
        },    # OPTIONAL
        TransitGatewayRouteTableArn =>
          'MyTransitGatewayRouteTableArn',    # max: 500; OPTIONAL
      },
      DestinationFilters => {
        'MyFilterName' => [
          'MyFilterValue', ...                # max: 255
        ],    # key: max: 128
      },    # OPTIONAL
      ExactCidrMatches => [
        'MyConstrainedString', ...    # max: 256; OPTIONAL
      ],    # OPTIONAL
      LongestPrefixMatches => [
        'MyConstrainedString', ...    # max: 256; OPTIONAL
      ],    # OPTIONAL
      PrefixListIds => [
        'MyConstrainedString', ...    # max: 256; OPTIONAL
      ],    # OPTIONAL
      States => [
        'ACTIVE', ...    # values: ACTIVE, BLACKHOLE
      ],    # OPTIONAL
      SubnetOfMatches => [
        'MyConstrainedString', ...    # max: 256; OPTIONAL
      ],    # OPTIONAL
      SupernetOfMatches => [
        'MyConstrainedString', ...    # max: 256; OPTIONAL
      ],    # OPTIONAL
      Types => [
        'PROPAGATED', ...    # values: PROPAGATED, STATIC
      ],    # OPTIONAL
    );

    # Results:
    my $CoreNetworkSegmentEdge =
      $GetNetworkRoutesResponse->CoreNetworkSegmentEdge;
    my $NetworkRoutes       = $GetNetworkRoutesResponse->NetworkRoutes;
    my $RouteTableArn       = $GetNetworkRoutesResponse->RouteTableArn;
    my $RouteTableTimestamp = $GetNetworkRoutesResponse->RouteTableTimestamp;
    my $RouteTableType      = $GetNetworkRoutesResponse->RouteTableType;

    # Returns a L<Paws::NetworkManager::GetNetworkRoutesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetNetworkRoutes>

=head1 ATTRIBUTES


=head2 DestinationFilters => L<Paws::NetworkManager::FilterMap>

Filter by route table destination. Possible Values:
TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.



=head2 ExactCidrMatches => ArrayRef[Str|Undef]

An exact CIDR block.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 LongestPrefixMatches => ArrayRef[Str|Undef]

The most specific route that matches the traffic (longest prefix
match).



=head2 PrefixListIds => ArrayRef[Str|Undef]

The IDs of the prefix lists.



=head2 B<REQUIRED> RouteTableIdentifier => L<Paws::NetworkManager::RouteTableIdentifier>

The ID of the route table.



=head2 States => ArrayRef[Str|Undef]

The route states.



=head2 SubnetOfMatches => ArrayRef[Str|Undef]

The routes with a subnet that match the specified CIDR filter.



=head2 SupernetOfMatches => ArrayRef[Str|Undef]

The routes with a CIDR that encompasses the CIDR filter. Example: If
you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.



=head2 Types => ArrayRef[Str|Undef]

The route types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNetworkRoutes in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

