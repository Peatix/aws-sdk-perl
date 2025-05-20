
package Paws::NetworkManager::GetCoreNetworkPolicy;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias');
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreNetworkId', required => 1);
  has PolicyVersionId => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'policyVersionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCoreNetworkPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks/{coreNetworkId}/core-network-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetCoreNetworkPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCoreNetworkPolicy - Arguments for method GetCoreNetworkPolicy on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoreNetworkPolicy on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetCoreNetworkPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoreNetworkPolicy.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetCoreNetworkPolicyResponse = $networkmanager->GetCoreNetworkPolicy(
      CoreNetworkId   => 'MyCoreNetworkId',
      Alias           => 'LIVE',              # OPTIONAL
      PolicyVersionId => 1,                   # OPTIONAL
    );

    # Results:
    my $CoreNetworkPolicy = $GetCoreNetworkPolicyResponse->CoreNetworkPolicy;

    # Returns a L<Paws::NetworkManager::GetCoreNetworkPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetCoreNetworkPolicy>

=head1 ATTRIBUTES


=head2 Alias => Str

The alias of a core network policy

Valid values are: C<"LIVE">, C<"LATEST">

=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network.



=head2 PolicyVersionId => Int

The ID of a core network policy version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoreNetworkPolicy in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

