
package Paws::ControlTower::GetEnabledControlOutput;
  use Moose;
  has EnabledControlDetails => (is => 'ro', isa => 'Paws::ControlTower::EnabledControlDetails', traits => ['NameInRequest'], request_name => 'enabledControlDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetEnabledControlOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledControlDetails => L<Paws::ControlTower::EnabledControlDetails>

Information about the enabled control.


=head2 _request_id => Str


=cut

