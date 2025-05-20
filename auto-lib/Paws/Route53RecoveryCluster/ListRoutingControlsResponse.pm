
package Paws::Route53RecoveryCluster::ListRoutingControlsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RoutingControls => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryCluster::RoutingControl]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::ListRoutingControlsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 B<REQUIRED> RoutingControls => ArrayRef[L<Paws::Route53RecoveryCluster::RoutingControl>]

The list of routing controls.


=head2 _request_id => Str


=cut

1;