
package Paws::KafkaConnect::ListConnectorsResponse;
  use Moose;
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::ConnectorSummary]', traits => ['NameInRequest'], request_name => 'connectors');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListConnectorsResponse

=head1 ATTRIBUTES


=head2 Connectors => ArrayRef[L<Paws::KafkaConnect::ConnectorSummary>]

An array of connector descriptions.


=head2 NextToken => Str

If the response of a ListConnectors operation is truncated, it will
include a NextToken. Send this NextToken in a subsequent request to
continue listing from where it left off.


=head2 _request_id => Str


=cut

