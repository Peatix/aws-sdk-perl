
package Paws::ControlTower::GetLandingZoneOutput;
  use Moose;
  has LandingZone => (is => 'ro', isa => 'Paws::ControlTower::LandingZoneDetail', traits => ['NameInRequest'], request_name => 'landingZone', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetLandingZoneOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LandingZone => L<Paws::ControlTower::LandingZoneDetail>

Information about the landing zone.


=head2 _request_id => Str


=cut

