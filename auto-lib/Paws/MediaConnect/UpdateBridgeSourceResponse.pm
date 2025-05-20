
package Paws::MediaConnect::UpdateBridgeSourceResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::BridgeSource', traits => ['NameInRequest'], request_name => 'source');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeSourceResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the updated bridge source.


=head2 Source => L<Paws::MediaConnect::BridgeSource>

The updated bridge source.


=head2 _request_id => Str


=cut

