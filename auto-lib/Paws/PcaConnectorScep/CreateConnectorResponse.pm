
package Paws::PcaConnectorScep::CreateConnectorResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::CreateConnectorResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

Returns the Amazon Resource Name (ARN) of the connector.


=head2 _request_id => Str


=cut

