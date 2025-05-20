
package Paws::KafkaConnect::ListConnectorOperationsResponse;
  use Moose;
  has ConnectorOperations => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::ConnectorOperationSummary]', traits => ['NameInRequest'], request_name => 'connectorOperations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListConnectorOperationsResponse

=head1 ATTRIBUTES


=head2 ConnectorOperations => ArrayRef[L<Paws::KafkaConnect::ConnectorOperationSummary>]

An array of connector operation descriptions.


=head2 NextToken => Str

If the response is truncated, it includes a NextToken. Send this
NextToken in a subsequent request to continue listing from where it
left off.


=head2 _request_id => Str


=cut

