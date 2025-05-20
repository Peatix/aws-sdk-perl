
package Paws::NetworkManager::ListPeerings;
  use Moose;
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'coreNetworkId');
  has EdgeLocation => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'edgeLocation');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PeeringType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'peeringType');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPeerings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/peerings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::ListPeeringsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListPeerings - Arguments for method ListPeerings on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPeerings on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method ListPeerings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPeerings.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $ListPeeringsResponse = $networkmanager->ListPeerings(
      CoreNetworkId => 'MyCoreNetworkId',         # OPTIONAL
      EdgeLocation  => 'MyExternalRegionCode',    # OPTIONAL
      MaxResults    => 1,                         # OPTIONAL
      NextToken     => 'MyNextToken',             # OPTIONAL
      PeeringType   => 'TRANSIT_GATEWAY',         # OPTIONAL
      State         => 'CREATING',                # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPeeringsResponse->NextToken;
    my $Peerings  = $ListPeeringsResponse->Peerings;

    # Returns a L<Paws::NetworkManager::ListPeeringsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/ListPeerings>

=head1 ATTRIBUTES


=head2 CoreNetworkId => Str

The ID of a core network.



=head2 EdgeLocation => Str

Returns a list edge locations for the



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 PeeringType => Str

Returns a list of a peering requests.

Valid values are: C<"TRANSIT_GATEWAY">

=head2 State => Str

Returns a list of the peering request states.

Valid values are: C<"CREATING">, C<"FAILED">, C<"AVAILABLE">, C<"DELETING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPeerings in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

