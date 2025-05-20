
package Paws::RedshiftServerless::ListReservationOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReservationOfferingsList => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::ReservationOffering]', traits => ['NameInRequest'], request_name => 'reservationOfferingsList' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListReservationOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items.


=head2 B<REQUIRED> ReservationOfferingsList => ArrayRef[L<Paws::RedshiftServerless::ReservationOffering>]

The returned list of reservation offerings.


=head2 _request_id => Str


=cut

1;