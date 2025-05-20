
package Paws::KafkaConnect::DeleteConnectorResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorArn');
  has ConnectorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DeleteConnectorResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector that you requested to
delete.


=head2 ConnectorState => Str

The state of the connector that you requested to delete.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

