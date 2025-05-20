
package Paws::NetworkFirewall::ListFlowOperationsResponse;
  use Moose;
  has FlowOperations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::FlowOperationMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListFlowOperationsResponse

=head1 ATTRIBUTES


=head2 FlowOperations => ArrayRef[L<Paws::NetworkFirewall::FlowOperationMetadata>]

Flow operations let you manage the flows tracked in the flow table,
also known as the firewall table.

A flow is network traffic that is monitored by a firewall, either by
stateful or stateless rules. For traffic to be considered part of a
flow, it must share Destination, DestinationPort, Direction, Protocol,
Source, and SourcePort.


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 _request_id => Str


=cut

1;