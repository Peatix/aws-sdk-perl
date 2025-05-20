
package Paws::MediaConnect::UpdateGatewayInstanceResponse;
  use Moose;
  has BridgePlacement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgePlacement');
  has GatewayInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayInstanceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateGatewayInstanceResponse

=head1 ATTRIBUTES


=head2 BridgePlacement => Str

The state of the instance. C<ACTIVE> or C<INACTIVE>.

Valid values are: C<"AVAILABLE">, C<"LOCKED">
=head2 GatewayInstanceArn => Str

The ARN of the instance that was updated.


=head2 _request_id => Str


=cut

