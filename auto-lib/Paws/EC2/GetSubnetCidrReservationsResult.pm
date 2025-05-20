
package Paws::EC2::GetSubnetCidrReservationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SubnetIpv4CidrReservations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetCidrReservation]', request_name => 'subnetIpv4CidrReservationSet', traits => ['NameInRequest',]);
  has SubnetIpv6CidrReservations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetCidrReservation]', request_name => 'subnetIpv6CidrReservationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSubnetCidrReservationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 SubnetIpv4CidrReservations => ArrayRef[L<Paws::EC2::SubnetCidrReservation>]

Information about the IPv4 subnet CIDR reservations.


=head2 SubnetIpv6CidrReservations => ArrayRef[L<Paws::EC2::SubnetCidrReservation>]

Information about the IPv6 subnet CIDR reservations.


=head2 _request_id => Str


=cut

