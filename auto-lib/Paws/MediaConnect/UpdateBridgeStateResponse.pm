
package Paws::MediaConnect::UpdateBridgeStateResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has DesiredState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeStateResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the updated bridge.


=head2 DesiredState => Str

The new state of the bridge.

Valid values are: C<"ACTIVE">, C<"STANDBY">, C<"DELETED">
=head2 _request_id => Str


=cut

