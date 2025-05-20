
package Paws::EC2::DeleteSubnetCidrReservationResult;
  use Moose;
  has DeletedSubnetCidrReservation => (is => 'ro', isa => 'Paws::EC2::SubnetCidrReservation', request_name => 'deletedSubnetCidrReservation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteSubnetCidrReservationResult

=head1 ATTRIBUTES


=head2 DeletedSubnetCidrReservation => L<Paws::EC2::SubnetCidrReservation>

Information about the deleted subnet CIDR reservation.


=head2 _request_id => Str


=cut

