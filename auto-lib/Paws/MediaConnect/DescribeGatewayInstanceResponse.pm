
package Paws::MediaConnect::DescribeGatewayInstanceResponse;
  use Moose;
  has GatewayInstance => (is => 'ro', isa => 'Paws::MediaConnect::GatewayInstance', traits => ['NameInRequest'], request_name => 'gatewayInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeGatewayInstanceResponse

=head1 ATTRIBUTES


=head2 GatewayInstance => L<Paws::MediaConnect::GatewayInstance>

The gateway instance that you requested a description of.


=head2 _request_id => Str


=cut

