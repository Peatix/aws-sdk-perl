package Paws::EC2::LocalGatewayVirtualInterface;
  use Moose;
  has ConfigurationState => (is => 'ro', isa => 'Str', request_name => 'configurationState', traits => ['NameInRequest']);
  has LocalAddress => (is => 'ro', isa => 'Str', request_name => 'localAddress', traits => ['NameInRequest']);
  has LocalBgpAsn => (is => 'ro', isa => 'Int', request_name => 'localBgpAsn', traits => ['NameInRequest']);
  has LocalGatewayId => (is => 'ro', isa => 'Str', request_name => 'localGatewayId', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceArn => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceArn', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceGroupId => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceGroupId', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceId => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceId', traits => ['NameInRequest']);
  has OutpostLagId => (is => 'ro', isa => 'Str', request_name => 'outpostLagId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PeerAddress => (is => 'ro', isa => 'Str', request_name => 'peerAddress', traits => ['NameInRequest']);
  has PeerBgpAsn => (is => 'ro', isa => 'Int', request_name => 'peerBgpAsn', traits => ['NameInRequest']);
  has PeerBgpAsnExtended => (is => 'ro', isa => 'Int', request_name => 'peerBgpAsnExtended', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Vlan => (is => 'ro', isa => 'Int', request_name => 'vlan', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LocalGatewayVirtualInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LocalGatewayVirtualInterface object:

  $service_obj->Method(Att1 => { ConfigurationState => $value, ..., Vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LocalGatewayVirtualInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConfigurationState => Str

The current state of the local gateway virtual interface.


=head2 LocalAddress => Str

The local address.


=head2 LocalBgpAsn => Int

The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the
local gateway.


=head2 LocalGatewayId => Str

The ID of the local gateway.


=head2 LocalGatewayVirtualInterfaceArn => Str

The Amazon Resource Number (ARN) of the local gateway virtual
interface.


=head2 LocalGatewayVirtualInterfaceGroupId => Str

The ID of the local gateway virtual interface group.


=head2 LocalGatewayVirtualInterfaceId => Str

The ID of the virtual interface.


=head2 OutpostLagId => Str

The Outpost LAG ID.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the local gateway
virtual interface.


=head2 PeerAddress => Str

The peer address.


=head2 PeerBgpAsn => Int

The peer BGP ASN.


=head2 PeerBgpAsnExtended => Int

The extended 32-bit ASN of the BGP peer for use with larger ASN values.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the virtual interface.


=head2 Vlan => Int

The ID of the VLAN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
