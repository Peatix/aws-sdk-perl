
package Paws::MediaConnect::DeregisterGatewayInstanceResponse;
  use Moose;
  has GatewayInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayInstanceArn');
  has InstanceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DeregisterGatewayInstanceResponse

=head1 ATTRIBUTES


=head2 GatewayInstanceArn => Str

The ARN of the instance.


=head2 InstanceState => Str

The status of the instance.

Valid values are: C<"REGISTERING">, C<"ACTIVE">, C<"DEREGISTERING">, C<"DEREGISTERED">, C<"REGISTRATION_ERROR">, C<"DEREGISTRATION_ERROR">
=head2 _request_id => Str


=cut

