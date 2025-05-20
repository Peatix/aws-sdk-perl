
package Paws::RedshiftServerless::GetReservationResponse;
  use Moose;
  has Reservation => (is => 'ro', isa => 'Paws::RedshiftServerless::Reservation', traits => ['NameInRequest'], request_name => 'reservation' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetReservationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Reservation => L<Paws::RedshiftServerless::Reservation>

The returned reservation object.


=head2 _request_id => Str


=cut

1;