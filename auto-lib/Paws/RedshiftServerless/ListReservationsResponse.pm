
package Paws::RedshiftServerless::ListReservationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReservationsList => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Reservation]', traits => ['NameInRequest'], request_name => 'reservationsList' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListReservationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items.


=head2 B<REQUIRED> ReservationsList => ArrayRef[L<Paws::RedshiftServerless::Reservation>]

The serverless reservations returned by the request.


=head2 _request_id => Str


=cut

1;