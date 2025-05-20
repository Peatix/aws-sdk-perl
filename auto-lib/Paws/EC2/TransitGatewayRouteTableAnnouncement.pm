package Paws::EC2::TransitGatewayRouteTableAnnouncement;
  use Moose;
  has AnnouncementDirection => (is => 'ro', isa => 'Str', request_name => 'announcementDirection', traits => ['NameInRequest']);
  has CoreNetworkId => (is => 'ro', isa => 'Str', request_name => 'coreNetworkId', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has PeerCoreNetworkId => (is => 'ro', isa => 'Str', request_name => 'peerCoreNetworkId', traits => ['NameInRequest']);
  has PeeringAttachmentId => (is => 'ro', isa => 'Str', request_name => 'peeringAttachmentId', traits => ['NameInRequest']);
  has PeerTransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'peerTransitGatewayId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has TransitGatewayRouteTableAnnouncementId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayRouteTableAnnouncementId', traits => ['NameInRequest']);
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayRouteTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRouteTableAnnouncement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRouteTableAnnouncement object:

  $service_obj->Method(Att1 => { AnnouncementDirection => $value, ..., TransitGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRouteTableAnnouncement object:

  $result = $service_obj->Method(...);
  $result->Att1->AnnouncementDirection

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AnnouncementDirection => Str

The direction for the route table announcement.


=head2 CoreNetworkId => Str

The ID of the core network for the transit gateway route table
announcement.


=head2 CreationTime => Str

The timestamp when the transit gateway route table announcement was
created.


=head2 PeerCoreNetworkId => Str

The ID of the core network ID for the peer.


=head2 PeeringAttachmentId => Str

The ID of the peering attachment.


=head2 PeerTransitGatewayId => Str

The ID of the peer transit gateway.


=head2 State => Str

The state of the transit gateway announcement.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The key-value pairs associated with the route table announcement.


=head2 TransitGatewayId => Str

The ID of the transit gateway.


=head2 TransitGatewayRouteTableAnnouncementId => Str

The ID of the transit gateway route table announcement.


=head2 TransitGatewayRouteTableId => Str

The ID of the transit gateway route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
