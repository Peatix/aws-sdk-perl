
package Paws::EC2::CreateCapacityReservationBySplittingResult;
  use Moose;
  has DestinationCapacityReservation => (is => 'ro', isa => 'Paws::EC2::CapacityReservation', request_name => 'destinationCapacityReservation', traits => ['NameInRequest',]);
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest',]);
  has SourceCapacityReservation => (is => 'ro', isa => 'Paws::EC2::CapacityReservation', request_name => 'sourceCapacityReservation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservationBySplittingResult

=head1 ATTRIBUTES


=head2 DestinationCapacityReservation => L<Paws::EC2::CapacityReservation>

Information about the destination Capacity Reservation.


=head2 InstanceCount => Int

The number of instances in the new Capacity Reservation. The number of
instances in the source Capacity Reservation was reduced by this
amount.


=head2 SourceCapacityReservation => L<Paws::EC2::CapacityReservation>

Information about the source Capacity Reservation.


=head2 _request_id => Str


=cut

