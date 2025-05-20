
package Paws::EC2::DeleteTransitGatewayRouteTableAnnouncementResult;
  use Moose;
  has TransitGatewayRouteTableAnnouncement => (is => 'ro', isa => 'Paws::EC2::TransitGatewayRouteTableAnnouncement', request_name => 'transitGatewayRouteTableAnnouncement', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTransitGatewayRouteTableAnnouncementResult

=head1 ATTRIBUTES


=head2 TransitGatewayRouteTableAnnouncement => L<Paws::EC2::TransitGatewayRouteTableAnnouncement>

Provides details about a deleted transit gateway route table.


=head2 _request_id => Str


=cut

