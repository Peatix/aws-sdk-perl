
package Paws::Route53RecoveryControlConfig::ListRoutingControlsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RoutingControls => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryControlConfig::RoutingControl]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListRoutingControlsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 RoutingControls => ArrayRef[L<Paws::Route53RecoveryControlConfig::RoutingControl>]

An array of routing controls.


=head2 _request_id => Str


=cut

