
package Paws::OpenSearch::DeleteInboundConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::OpenSearch::InboundConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteInboundConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::OpenSearch::InboundConnection>

The deleted inbound connection.


=head2 _request_id => Str


=cut

