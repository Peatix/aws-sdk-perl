
package Paws::EC2::GetCapacityReservationUsageResult;
  use Moose;
  has AvailableInstanceCount => (is => 'ro', isa => 'Int', request_name => 'availableInstanceCount', traits => ['NameInRequest',]);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest',]);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest',]);
  has InstanceUsages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceUsage]', request_name => 'instanceUsageSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);
  has TotalInstanceCount => (is => 'ro', isa => 'Int', request_name => 'totalInstanceCount', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetCapacityReservationUsageResult

=head1 ATTRIBUTES


=head2 AvailableInstanceCount => Int

The remaining capacity. Indicates the number of instances that can be
launched in the Capacity Reservation.


=head2 CapacityReservationId => Str

The ID of the Capacity Reservation.


=head2 InstanceType => Str

The type of instance for which the Capacity Reservation reserves
capacity.


=head2 InstanceUsages => ArrayRef[L<Paws::EC2::InstanceUsage>]

Information about the Capacity Reservation usage.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 State => Str

The current state of the Capacity Reservation. A Capacity Reservation
can be in one of the following states:

=over

=item *

C<active> - The capacity is available for use.

=item *

C<expired> - The Capacity Reservation expired automatically at the date
and time specified in your reservation request. The reserved capacity
is no longer available for your use.

=item *

C<cancelled> - The Capacity Reservation was canceled. The reserved
capacity is no longer available for your use.

=item *

C<pending> - The Capacity Reservation request was successful but the
capacity provisioning is still pending.

=item *

C<failed> - The Capacity Reservation request has failed. A request can
fail due to request parameters that are not valid, capacity
constraints, or instance limit constraints. You can view a failed
request for 60 minutes.

=item *

C<scheduled> - (I<Future-dated Capacity Reservations>) The future-dated
Capacity Reservation request was approved and the Capacity Reservation
is scheduled for delivery on the requested start date.

=item *

C<payment-pending> - (I<Capacity Blocks>) The upfront payment has not
been processed yet.

=item *

C<payment-failed> - (I<Capacity Blocks>) The upfront payment was not
processed in the 12-hour time frame. Your Capacity Block was released.

=item *

C<assessing> - (I<Future-dated Capacity Reservations>) Amazon EC2 is
assessing your request for a future-dated Capacity Reservation.

=item *

C<delayed> - (I<Future-dated Capacity Reservations>) Amazon EC2
encountered a delay in provisioning the requested future-dated Capacity
Reservation. Amazon EC2 is unable to deliver the requested capacity by
the requested start date and time.

=item *

C<unsupported> - (I<Future-dated Capacity Reservations>) Amazon EC2
can't support the future-dated Capacity Reservation request due to
capacity constraints. You can view unsupported requests for 30 days.
The Capacity Reservation will not be delivered.

=back


Valid values are: C<"active">, C<"expired">, C<"cancelled">, C<"pending">, C<"failed">, C<"scheduled">, C<"payment-pending">, C<"payment-failed">, C<"assessing">, C<"delayed">, C<"unsupported">
=head2 TotalInstanceCount => Int

The number of instances for which the Capacity Reservation reserves
capacity.


=head2 _request_id => Str


=cut

