
package Paws::EC2::PurchaseCapacityBlockResult;
  use Moose;
  has CapacityReservation => (is => 'ro', isa => 'Paws::EC2::CapacityReservation', request_name => 'capacityReservation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseCapacityBlockResult

=head1 ATTRIBUTES


=head2 CapacityReservation => L<Paws::EC2::CapacityReservation>

The Capacity Reservation.


=head2 _request_id => Str


=cut

