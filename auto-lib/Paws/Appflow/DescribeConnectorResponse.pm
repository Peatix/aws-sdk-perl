
package Paws::Appflow::DescribeConnectorResponse;
  use Moose;
  has ConnectorConfiguration => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration', traits => ['NameInRequest'], request_name => 'connectorConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorResponse

=head1 ATTRIBUTES


=head2 ConnectorConfiguration => L<Paws::Appflow::ConnectorConfiguration>

Configuration info of all the connectors that the user requested.


=head2 _request_id => Str


=cut

