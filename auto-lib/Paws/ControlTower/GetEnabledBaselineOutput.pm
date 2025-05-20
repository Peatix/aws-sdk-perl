
package Paws::ControlTower::GetEnabledBaselineOutput;
  use Moose;
  has EnabledBaselineDetails => (is => 'ro', isa => 'Paws::ControlTower::EnabledBaselineDetails', traits => ['NameInRequest'], request_name => 'enabledBaselineDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetEnabledBaselineOutput

=head1 ATTRIBUTES


=head2 EnabledBaselineDetails => L<Paws::ControlTower::EnabledBaselineDetails>

Details of the C<EnabledBaseline> resource.


=head2 _request_id => Str


=cut

