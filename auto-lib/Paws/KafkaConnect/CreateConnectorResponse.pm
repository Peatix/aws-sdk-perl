
package Paws::KafkaConnect::CreateConnectorResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorArn');
  has ConnectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorName');
  has ConnectorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateConnectorResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

The Amazon Resource Name (ARN) that Amazon assigned to the connector.


=head2 ConnectorName => Str

The name of the connector.


=head2 ConnectorState => Str

The state of the connector.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

