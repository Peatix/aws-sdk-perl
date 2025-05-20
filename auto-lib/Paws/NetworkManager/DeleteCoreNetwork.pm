
package Paws::NetworkManager::DeleteCoreNetwork;
  use Moose;
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreNetworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCoreNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks/{coreNetworkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteCoreNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteCoreNetwork - Arguments for method DeleteCoreNetwork on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCoreNetwork on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteCoreNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCoreNetwork.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteCoreNetworkResponse = $networkmanager->DeleteCoreNetwork(
      CoreNetworkId => 'MyCoreNetworkId',

    );

    # Results:
    my $CoreNetwork = $DeleteCoreNetworkResponse->CoreNetwork;

    # Returns a L<Paws::NetworkManager::DeleteCoreNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteCoreNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreNetworkId => Str

The network ID of the deleted core network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCoreNetwork in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

