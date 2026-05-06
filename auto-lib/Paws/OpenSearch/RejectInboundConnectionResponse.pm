
package Paws::OpenSearch::RejectInboundConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::OpenSearch::InboundConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::RejectInboundConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::OpenSearch::InboundConnection>

Contains details about the rejected inbound connection.


=head2 _request_id => Str


=cut

