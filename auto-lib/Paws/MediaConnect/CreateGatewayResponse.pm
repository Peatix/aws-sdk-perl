
package Paws::MediaConnect::CreateGatewayResponse;
  use Moose;
  has Gateway => (is => 'ro', isa => 'Paws::MediaConnect::Gateway', traits => ['NameInRequest'], request_name => 'gateway');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateGatewayResponse

=head1 ATTRIBUTES


=head2 Gateway => L<Paws::MediaConnect::Gateway>

The gateway that you created.


=head2 _request_id => Str


=cut

