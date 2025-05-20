
package Paws::Appflow::UpdateConnectorRegistrationResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::UpdateConnectorRegistrationResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

The ARN of the connector being updated.


=head2 _request_id => Str


=cut

