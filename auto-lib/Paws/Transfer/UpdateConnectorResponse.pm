
package Paws::Transfer::UpdateConnectorResponse;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateConnectorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

Returns the identifier of the connector object that you are updating.


=head2 _request_id => Str


=cut

1;