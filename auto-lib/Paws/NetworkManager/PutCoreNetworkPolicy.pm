
package Paws::NetworkManager::PutCoreNetworkPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreNetworkId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has LatestVersionId => (is => 'ro', isa => 'Int');
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutCoreNetworkPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks/{coreNetworkId}/core-network-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::PutCoreNetworkPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::PutCoreNetworkPolicy - Arguments for method PutCoreNetworkPolicy on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutCoreNetworkPolicy on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method PutCoreNetworkPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutCoreNetworkPolicy.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $PutCoreNetworkPolicyResponse = $networkmanager->PutCoreNetworkPolicy(
      CoreNetworkId   => 'MyCoreNetworkId',
      PolicyDocument  => 'MyCoreNetworkPolicyDocument',
      ClientToken     => 'MyClientToken',                 # OPTIONAL
      Description     => 'MyConstrainedString',           # OPTIONAL
      LatestVersionId => 1,                               # OPTIONAL
    );

    # Results:
    my $CoreNetworkPolicy = $PutCoreNetworkPolicyResponse->CoreNetworkPolicy;

    # Returns a L<Paws::NetworkManager::PutCoreNetworkPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/PutCoreNetworkPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network.



=head2 Description => Str

a core network policy description.



=head2 LatestVersionId => Int

The ID of a core network policy.



=head2 B<REQUIRED> PolicyDocument => Str

The policy document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutCoreNetworkPolicy in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

