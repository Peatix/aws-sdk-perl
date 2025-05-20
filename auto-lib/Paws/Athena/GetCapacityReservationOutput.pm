
package Paws::Athena::GetCapacityReservationOutput;
  use Moose;
  has CapacityReservation => (is => 'ro', isa => 'Paws::Athena::CapacityReservation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCapacityReservationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservation => L<Paws::Athena::CapacityReservation>

The requested capacity reservation structure.


=head2 _request_id => Str


=cut

1;