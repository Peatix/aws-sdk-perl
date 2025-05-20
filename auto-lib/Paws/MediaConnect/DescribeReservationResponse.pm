
package Paws::MediaConnect::DescribeReservationResponse;
  use Moose;
  has Reservation => (is => 'ro', isa => 'Paws::MediaConnect::Reservation', traits => ['NameInRequest'], request_name => 'reservation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeReservationResponse

=head1 ATTRIBUTES


=head2 Reservation => L<Paws::MediaConnect::Reservation>

A pricing agreement for a discounted rate for a specific outbound
bandwidth that your MediaConnect account will use each month over a
specific time period. The discounted rate in the reservation applies to
outbound bandwidth for all flows from your account until your account
reaches the amount of bandwidth in your reservation. If you use more
outbound bandwidth than the agreed upon amount in a single month, the
overage is charged at the on-demand rate.


=head2 _request_id => Str


=cut

