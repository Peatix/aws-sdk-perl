
package Paws::Transfer::DescribeConnectorResponse;
  use Moose;
  has Connector => (is => 'ro', isa => 'Paws::Transfer::DescribedConnector', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeConnectorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Connector => L<Paws::Transfer::DescribedConnector>

The structure that contains the details of the connector.


=head2 _request_id => Str


=cut

1;