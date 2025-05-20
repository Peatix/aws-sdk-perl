
package Paws::PcaConnectorScep::GetConnectorResponse;
  use Moose;
  has Connector => (is => 'ro', isa => 'Paws::PcaConnectorScep::Connector');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::GetConnectorResponse

=head1 ATTRIBUTES


=head2 Connector => L<Paws::PcaConnectorScep::Connector>

The properties of the connector.


=head2 _request_id => Str


=cut

