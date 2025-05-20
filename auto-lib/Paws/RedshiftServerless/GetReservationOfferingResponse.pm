
package Paws::RedshiftServerless::GetReservationOfferingResponse;
  use Moose;
  has ReservationOffering => (is => 'ro', isa => 'Paws::RedshiftServerless::ReservationOffering', traits => ['NameInRequest'], request_name => 'reservationOffering' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetReservationOfferingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReservationOffering => L<Paws::RedshiftServerless::ReservationOffering>

The returned reservation offering. The offering determines the payment
schedule for the reservation.


=head2 _request_id => Str


=cut

1;