
package Paws::Route53RecoveryCluster::GetRoutingControlStateResponse;
  use Moose;
  has RoutingControlArn => (is => 'ro', isa => 'Str', required => 1);
  has RoutingControlName => (is => 'ro', isa => 'Str');
  has RoutingControlState => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::GetRoutingControlStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) of the response.


=head2 RoutingControlName => Str

The routing control name.


=head2 B<REQUIRED> RoutingControlState => Str

The state of the routing control.

Valid values are: C<"On">, C<"Off">
=head2 _request_id => Str


=cut

1;