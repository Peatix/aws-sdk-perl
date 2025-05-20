
package Paws::Route53RecoveryControlConfig::ListControlPanelsResponse;
  use Moose;
  has ControlPanels => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryControlConfig::ControlPanel]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListControlPanelsResponse

=head1 ATTRIBUTES


=head2 ControlPanels => ArrayRef[L<Paws::Route53RecoveryControlConfig::ControlPanel>]

The result of a successful ListControlPanel request.


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 _request_id => Str


=cut

