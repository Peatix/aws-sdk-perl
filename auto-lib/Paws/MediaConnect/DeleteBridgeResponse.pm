
package Paws::MediaConnect::DeleteBridgeResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DeleteBridgeResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the deleted bridge.


=head2 _request_id => Str


=cut

