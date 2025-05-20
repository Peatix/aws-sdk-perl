
package Paws::Route53RecoveryControlConfig::UpdateRoutingControlResponse;
  use Moose;
  has RoutingControl => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::RoutingControl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateRoutingControlResponse

=head1 ATTRIBUTES


=head2 RoutingControl => L<Paws::Route53RecoveryControlConfig::RoutingControl>

The routing control that was updated.


=head2 _request_id => Str


=cut

