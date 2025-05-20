
package Paws::MediaConnect::DeleteGatewayResponse;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DeleteGatewayResponse

=head1 ATTRIBUTES


=head2 GatewayArn => Str

The ARN of the gateway that was deleted.


=head2 _request_id => Str


=cut

