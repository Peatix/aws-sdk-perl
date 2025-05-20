
package Paws::GroundStation::ListEphemeridesResponse;
  use Moose;
  has Ephemerides => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::EphemerisItem]', traits => ['NameInRequest'], request_name => 'ephemerides');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListEphemeridesResponse

=head1 ATTRIBUTES


=head2 Ephemerides => ArrayRef[L<Paws::GroundStation::EphemerisItem>]

List of ephemerides.


=head2 NextToken => Str

Pagination token.


=head2 _request_id => Str


=cut

