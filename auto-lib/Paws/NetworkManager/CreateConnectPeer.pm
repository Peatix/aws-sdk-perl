
package Paws::NetworkManager::CreateConnectPeer;
  use Moose;
  has BgpOptions => (is => 'ro', isa => 'Paws::NetworkManager::BgpOptions');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectAttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has CoreNetworkAddress => (is => 'ro', isa => 'Str');
  has InsideCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PeerAddress => (is => 'ro', isa => 'Str', required => 1);
  has SubnetArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectPeer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connect-peers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateConnectPeerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateConnectPeer - Arguments for method CreateConnectPeer on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectPeer on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateConnectPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectPeer.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateConnectPeerResponse = $networkmanager->CreateConnectPeer(
      ConnectAttachmentId => 'MyAttachmentId',
      PeerAddress         => 'MyIPAddress',
      BgpOptions          => {
        PeerAsn => 1,    # OPTIONAL
      },    # OPTIONAL
      ClientToken        => 'MyClientToken',    # OPTIONAL
      CoreNetworkAddress => 'MyIPAddress',      # OPTIONAL
      InsideCidrBlocks   => [
        'MyConstrainedString', ...              # max: 256
      ],    # OPTIONAL
      SubnetArn => 'MySubnetArn',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ConnectPeer = $CreateConnectPeerResponse->ConnectPeer;

    # Returns a L<Paws::NetworkManager::CreateConnectPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateConnectPeer>

=head1 ATTRIBUTES


=head2 BgpOptions => L<Paws::NetworkManager::BgpOptions>

The Connect peer BGP options. This only applies only when the protocol
is C<GRE>.



=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> ConnectAttachmentId => Str

The ID of the connection attachment.



=head2 CoreNetworkAddress => Str

A Connect peer core network address. This only applies only when the
protocol is C<GRE>.



=head2 InsideCidrBlocks => ArrayRef[Str|Undef]

The inside IP addresses used for BGP peering.



=head2 B<REQUIRED> PeerAddress => Str

The Connect peer address.



=head2 SubnetArn => Str

The subnet ARN for the Connect peer. This only applies only when the
protocol is NO_ENCAP.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags associated with the peer request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectPeer in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

