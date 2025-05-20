
package Paws::Route53RecoveryControlConfig::DescribeControlPanelResponse;
  use Moose;
  has ControlPanel => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::ControlPanel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::DescribeControlPanelResponse

=head1 ATTRIBUTES


=head2 ControlPanel => L<Paws::Route53RecoveryControlConfig::ControlPanel>

Information about the control panel.


=head2 _request_id => Str


=cut

