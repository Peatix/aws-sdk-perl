
package Paws::NetworkManager::DeleteConnectPeer;
  use Moose;
  has ConnectPeerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectPeerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnectPeer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connect-peers/{connectPeerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteConnectPeerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteConnectPeer - Arguments for method DeleteConnectPeer on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnectPeer on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteConnectPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnectPeer.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteConnectPeerResponse = $networkmanager->DeleteConnectPeer(
      ConnectPeerId => 'MyConnectPeerId',

    );

    # Results:
    my $ConnectPeer = $DeleteConnectPeerResponse->ConnectPeer;

    # Returns a L<Paws::NetworkManager::DeleteConnectPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteConnectPeer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectPeerId => Str

The ID of the deleted Connect peer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnectPeer in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

