
package Paws::EC2::DescribeTransitGatewayRouteTableAnnouncementsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayRouteTableAnnouncements => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayRouteTableAnnouncement]', request_name => 'transitGatewayRouteTableAnnouncements', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayRouteTableAnnouncementsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 TransitGatewayRouteTableAnnouncements => ArrayRef[L<Paws::EC2::TransitGatewayRouteTableAnnouncement>]

Describes the transit gateway route table announcement.


=head2 _request_id => Str


=cut

