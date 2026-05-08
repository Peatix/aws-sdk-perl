
package Paws::OpenSearch::PurchaseReservedInstanceOfferingResponse;
  use Moose;
  has ReservationName => (is => 'ro', isa => 'Str');
  has ReservedInstanceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::PurchaseReservedInstanceOfferingResponse

=head1 ATTRIBUTES


=head2 ReservationName => Str

The customer-specified identifier used to track this reservation.


=head2 ReservedInstanceId => Str

The ID of the Reserved Instance offering that was purchased.


=head2 _request_id => Str


=cut

