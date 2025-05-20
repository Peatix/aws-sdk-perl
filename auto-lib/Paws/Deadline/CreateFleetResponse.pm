
package Paws::Deadline::CreateFleetResponse;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateFleetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

The fleet ID.


=head2 _request_id => Str


=cut

