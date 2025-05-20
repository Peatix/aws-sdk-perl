
package Paws::ELBv2::DescribeCapacityReservationOutput;
  use Moose;
  has CapacityReservationState => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::ZonalCapacityReservationState]');
  has DecreaseRequestsRemaining => (is => 'ro', isa => 'Int');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MinimumLoadBalancerCapacity => (is => 'ro', isa => 'Paws::ELBv2::MinimumLoadBalancerCapacity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeCapacityReservationOutput

=head1 ATTRIBUTES


=head2 CapacityReservationState => ArrayRef[L<Paws::ELBv2::ZonalCapacityReservationState>]

The state of the capacity reservation.


=head2 DecreaseRequestsRemaining => Int

The amount of daily capacity decreases remaining.


=head2 LastModifiedTime => Str

The last time the capacity reservation was modified.


=head2 MinimumLoadBalancerCapacity => L<Paws::ELBv2::MinimumLoadBalancerCapacity>

The requested minimum capacity reservation for the load balancer


=head2 _request_id => Str


=cut

