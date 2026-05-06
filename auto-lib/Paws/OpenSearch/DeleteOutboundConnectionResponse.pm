
package Paws::OpenSearch::DeleteOutboundConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::OpenSearch::OutboundConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteOutboundConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::OpenSearch::OutboundConnection>

The deleted inbound connection.


=head2 _request_id => Str


=cut

