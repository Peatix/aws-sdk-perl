
package Paws::Route53RecoveryControlConfig::DescribeRoutingControlResponse;
  use Moose;
  has RoutingControl => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::RoutingControl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::DescribeRoutingControlResponse

=head1 ATTRIBUTES


=head2 RoutingControl => L<Paws::Route53RecoveryControlConfig::RoutingControl>

Information about the routing control.


=head2 _request_id => Str


=cut

