
package Paws::MediaConnect::AddBridgeOutputsResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::BridgeOutput]', traits => ['NameInRequest'], request_name => 'outputs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddBridgeOutputsResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the bridge that you added outputs to.


=head2 Outputs => ArrayRef[L<Paws::MediaConnect::BridgeOutput>]

The outputs that you added to this bridge.


=head2 _request_id => Str


=cut

