
package Paws::ControlTower::GetLandingZoneOperationOutput;
  use Moose;
  has OperationDetails => (is => 'ro', isa => 'Paws::ControlTower::LandingZoneOperationDetail', traits => ['NameInRequest'], request_name => 'operationDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetLandingZoneOperationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationDetails => L<Paws::ControlTower::LandingZoneOperationDetail>

Details about a landing zone operation.


=head2 _request_id => Str


=cut

