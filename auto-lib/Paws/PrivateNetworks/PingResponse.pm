
package Paws::PrivateNetworks::PingResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::PingResponse

=head1 ATTRIBUTES


=head2 Status => Str

Information about the health of the service.


=head2 _request_id => Str


=cut

