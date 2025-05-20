
package Paws::ControlTower::ListLandingZonesOutput;
  use Moose;
  has LandingZones => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::LandingZoneSummary]', traits => ['NameInRequest'], request_name => 'landingZones', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListLandingZonesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LandingZones => ArrayRef[L<Paws::ControlTower::LandingZoneSummary>]

The ARN of the landing zone.


=head2 NextToken => Str

Retrieves the next page of results. If the string is empty, the
response is the end of the results.


=head2 _request_id => Str


=cut

