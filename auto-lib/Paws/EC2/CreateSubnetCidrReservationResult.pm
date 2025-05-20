
package Paws::EC2::CreateSubnetCidrReservationResult;
  use Moose;
  has SubnetCidrReservation => (is => 'ro', isa => 'Paws::EC2::SubnetCidrReservation', request_name => 'subnetCidrReservation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSubnetCidrReservationResult

=head1 ATTRIBUTES


=head2 SubnetCidrReservation => L<Paws::EC2::SubnetCidrReservation>

Information about the created subnet CIDR reservation.


=head2 _request_id => Str


=cut

