
package Paws::EC2::CancelCapacityReservationFleetsResult;
  use Moose;
  has FailedFleetCancellations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FailedCapacityReservationFleetCancellationResult]', request_name => 'failedFleetCancellationSet', traits => ['NameInRequest',]);
  has SuccessfulFleetCancellations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CapacityReservationFleetCancellationState]', request_name => 'successfulFleetCancellationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelCapacityReservationFleetsResult

=head1 ATTRIBUTES


=head2 FailedFleetCancellations => ArrayRef[L<Paws::EC2::FailedCapacityReservationFleetCancellationResult>]

Information about the Capacity Reservation Fleets that could not be
cancelled.


=head2 SuccessfulFleetCancellations => ArrayRef[L<Paws::EC2::CapacityReservationFleetCancellationState>]

Information about the Capacity Reservation Fleets that were
successfully cancelled.


=head2 _request_id => Str


=cut

