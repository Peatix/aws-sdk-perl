
package Paws::MediaConnect::UpdateBridgeResponse;
  use Moose;
  has Bridge => (is => 'ro', isa => 'Paws::MediaConnect::Bridge', traits => ['NameInRequest'], request_name => 'bridge');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeResponse

=head1 ATTRIBUTES


=head2 Bridge => L<Paws::MediaConnect::Bridge>

The bridge that was updated.


=head2 _request_id => Str


=cut

