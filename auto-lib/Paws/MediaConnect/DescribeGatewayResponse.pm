
package Paws::MediaConnect::DescribeGatewayResponse;
  use Moose;
  has Gateway => (is => 'ro', isa => 'Paws::MediaConnect::Gateway', traits => ['NameInRequest'], request_name => 'gateway');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeGatewayResponse

=head1 ATTRIBUTES


=head2 Gateway => L<Paws::MediaConnect::Gateway>

The gateway that you wanted to describe.


=head2 _request_id => Str


=cut

