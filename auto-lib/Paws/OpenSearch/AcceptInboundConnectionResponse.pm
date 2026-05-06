
package Paws::OpenSearch::AcceptInboundConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::OpenSearch::InboundConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AcceptInboundConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::OpenSearch::InboundConnection>

Information about the accepted inbound connection.


=head2 _request_id => Str


=cut

