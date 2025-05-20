
package Paws::LocationService::GetPlaceResponse;
  use Moose;
  has Place => (is => 'ro', isa => 'Paws::LocationService::Place', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetPlaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Place => L<Paws::LocationService::Place>

Details about the result, such as its address and position.


=head2 _request_id => Str


=cut

