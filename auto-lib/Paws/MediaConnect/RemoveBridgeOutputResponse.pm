
package Paws::MediaConnect::RemoveBridgeOutputResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has OutputName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveBridgeOutputResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the bridge from which the output was removed.


=head2 OutputName => Str

The name of the bridge output that was removed.


=head2 _request_id => Str


=cut

