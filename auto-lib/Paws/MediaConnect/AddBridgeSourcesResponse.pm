
package Paws::MediaConnect::AddBridgeSourcesResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::BridgeSource]', traits => ['NameInRequest'], request_name => 'sources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddBridgeSourcesResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the bridge that you added sources to.


=head2 Sources => ArrayRef[L<Paws::MediaConnect::BridgeSource>]

The sources that you added to this bridge.


=head2 _request_id => Str


=cut

