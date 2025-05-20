package Paws::EC2::ServiceLinkVirtualInterface;
  use Moose;
  has ConfigurationState => (is => 'ro', isa => 'Str', request_name => 'configurationState', traits => ['NameInRequest']);
  has LocalAddress => (is => 'ro', isa => 'Str', request_name => 'localAddress', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has OutpostId => (is => 'ro', isa => 'Str', request_name => 'outpostId', traits => ['NameInRequest']);
  has OutpostLagId => (is => 'ro', isa => 'Str', request_name => 'outpostLagId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PeerAddress => (is => 'ro', isa => 'Str', request_name => 'peerAddress', traits => ['NameInRequest']);
  has PeerBgpAsn => (is => 'ro', isa => 'Int', request_name => 'peerBgpAsn', traits => ['NameInRequest']);
  has ServiceLinkVirtualInterfaceArn => (is => 'ro', isa => 'Str', request_name => 'serviceLinkVirtualInterfaceArn', traits => ['NameInRequest']);
  has ServiceLinkVirtualInterfaceId => (is => 'ro', isa => 'Str', request_name => 'serviceLinkVirtualInterfaceId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Vlan => (is => 'ro', isa => 'Int', request_name => 'vlan', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ServiceLinkVirtualInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ServiceLinkVirtualInterface object:

  $service_obj->Method(Att1 => { ConfigurationState => $value, ..., Vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ServiceLinkVirtualInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConfigurationState => Str

The current state of the service link virtual interface.


=head2 LocalAddress => Str

The IPv4 address assigned to the local gateway virtual interface on the
Outpost side.


=head2 OutpostArn => Str

The Outpost Amazon Resource Number (ARN) for the service link virtual
interface.


=head2 OutpostId => Str

The Outpost ID for the service link virtual interface.


=head2 OutpostLagId => Str

The link aggregation group (LAG) ID for the service link virtual
interface.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the service link
virtual interface..


=head2 PeerAddress => Str

The IPv4 peer address for the service link virtual interface.


=head2 PeerBgpAsn => Int

The ASN for the Border Gateway Protocol (BGP) associated with the
service link virtual interface.


=head2 ServiceLinkVirtualInterfaceArn => Str

The Amazon Resource Number (ARN) for the service link virtual
interface.


=head2 ServiceLinkVirtualInterfaceId => Str

The ID of the service link virtual interface.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags associated with the service link virtual interface.


=head2 Vlan => Int

The virtual local area network for the service link virtual interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
