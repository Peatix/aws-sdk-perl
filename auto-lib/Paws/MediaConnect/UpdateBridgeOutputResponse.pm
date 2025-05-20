
package Paws::MediaConnect::UpdateBridgeOutputResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has Output => (is => 'ro', isa => 'Paws::MediaConnect::BridgeOutput', traits => ['NameInRequest'], request_name => 'output');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeOutputResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the bridge that was updated.


=head2 Output => L<Paws::MediaConnect::BridgeOutput>

The bridge output that was updated.


=head2 _request_id => Str


=cut

