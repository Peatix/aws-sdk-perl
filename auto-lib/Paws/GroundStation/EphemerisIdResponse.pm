
package Paws::GroundStation::EphemerisIdResponse;
  use Moose;
  has EphemerisId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ephemerisId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::EphemerisIdResponse

=head1 ATTRIBUTES


=head2 EphemerisId => Str

The AWS Ground Station ephemeris ID.


=head2 _request_id => Str


=cut

