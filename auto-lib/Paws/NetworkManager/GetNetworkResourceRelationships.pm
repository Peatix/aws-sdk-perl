
package Paws::NetworkManager::GetNetworkResourceRelationships;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'accountId');
  has AwsRegion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsRegion');
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'coreNetworkId');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RegisteredGatewayArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'registeredGatewayArn');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNetworkResourceRelationships');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/network-resource-relationships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetNetworkResourceRelationshipsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkResourceRelationships - Arguments for method GetNetworkResourceRelationships on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNetworkResourceRelationships on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetNetworkResourceRelationships.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNetworkResourceRelationships.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetNetworkResourceRelationshipsResponse =
      $networkmanager->GetNetworkResourceRelationships(
      GlobalNetworkId      => 'MyGlobalNetworkId',
      AccountId            => 'MyAWSAccountId',          # OPTIONAL
      AwsRegion            => 'MyExternalRegionCode',    # OPTIONAL
      CoreNetworkId        => 'MyCoreNetworkId',         # OPTIONAL
      MaxResults           => 1,                         # OPTIONAL
      NextToken            => 'MyNextToken',             # OPTIONAL
      RegisteredGatewayArn => 'MyResourceArn',           # OPTIONAL
      ResourceArn          => 'MyResourceArn',           # OPTIONAL
      ResourceType         => 'MyConstrainedString',     # OPTIONAL
      );

    # Results:
    my $NextToken     = $GetNetworkResourceRelationshipsResponse->NextToken;
    my $Relationships = $GetNetworkResourceRelationshipsResponse->Relationships;

# Returns a L<Paws::NetworkManager::GetNetworkResourceRelationshipsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetNetworkResourceRelationships>

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID.



=head2 AwsRegion => Str

The Amazon Web Services Region.



=head2 CoreNetworkId => Str

The ID of a core network.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 RegisteredGatewayArn => Str

The ARN of the registered gateway.



=head2 ResourceArn => Str

The ARN of the gateway.



=head2 ResourceType => Str

The resource type.

The following are the supported resource types for Direct Connect:

=over

=item *

C<dxcon>

=item *

C<dx-gateway>

=item *

C<dx-vif>

=back

The following are the supported resource types for Network Manager:

=over

=item *

C<attachment>

=item *

C<connect-peer>

=item *

C<connection>

=item *

C<core-network>

=item *

C<device>

=item *

C<link>

=item *

C<peering>

=item *

C<site>

=back

The following are the supported resource types for Amazon VPC:

=over

=item *

C<customer-gateway>

=item *

C<transit-gateway>

=item *

C<transit-gateway-attachment>

=item *

C<transit-gateway-connect-peer>

=item *

C<transit-gateway-route-table>

=item *

C<vpn-connection>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNetworkResourceRelationships in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

