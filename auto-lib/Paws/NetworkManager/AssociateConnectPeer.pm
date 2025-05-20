
package Paws::NetworkManager::AssociateConnectPeer;
  use Moose;
  has ConnectPeerId => (is => 'ro', isa => 'Str', required => 1);
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateConnectPeer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/connect-peer-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::AssociateConnectPeerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::AssociateConnectPeer - Arguments for method AssociateConnectPeer on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateConnectPeer on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method AssociateConnectPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateConnectPeer.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $AssociateConnectPeerResponse = $networkmanager->AssociateConnectPeer(
      ConnectPeerId   => 'MyConnectPeerId',
      DeviceId        => 'MyDeviceId',
      GlobalNetworkId => 'MyGlobalNetworkId',
      LinkId          => 'MyLinkId',            # OPTIONAL
    );

    # Results:
    my $ConnectPeerAssociation =
      $AssociateConnectPeerResponse->ConnectPeerAssociation;

    # Returns a L<Paws::NetworkManager::AssociateConnectPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/AssociateConnectPeer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectPeerId => Str

The ID of the Connect peer.



=head2 B<REQUIRED> DeviceId => Str

The ID of the device.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of your global network.



=head2 LinkId => Str

The ID of the link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateConnectPeer in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

