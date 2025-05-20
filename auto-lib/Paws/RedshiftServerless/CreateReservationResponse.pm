
package Paws::RedshiftServerless::CreateReservationResponse;
  use Moose;
  has Reservation => (is => 'ro', isa => 'Paws::RedshiftServerless::Reservation', traits => ['NameInRequest'], request_name => 'reservation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateReservationResponse

=head1 ATTRIBUTES


=head2 Reservation => L<Paws::RedshiftServerless::Reservation>

The reservation object that the C<CreateReservation> action created.


=head2 _request_id => Str


=cut

1;