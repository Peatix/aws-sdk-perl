
package Paws::OpenSearch::CreateOutboundConnectionResponse;
  use Moose;
  has ConnectionAlias => (is => 'ro', isa => 'Str');
  has ConnectionId => (is => 'ro', isa => 'Str');
  has ConnectionMode => (is => 'ro', isa => 'Str');
  has ConnectionProperties => (is => 'ro', isa => 'Paws::OpenSearch::ConnectionProperties');
  has ConnectionStatus => (is => 'ro', isa => 'Paws::OpenSearch::OutboundConnectionStatus');
  has LocalDomainInfo => (is => 'ro', isa => 'Paws::OpenSearch::DomainInformationContainer');
  has RemoteDomainInfo => (is => 'ro', isa => 'Paws::OpenSearch::DomainInformationContainer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateOutboundConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionAlias => Str

Name of the connection.


=head2 ConnectionId => Str

The unique identifier for the created outbound connection, which is
used for subsequent operations on the connection.


=head2 ConnectionMode => Str

The connection mode.

Valid values are: C<"DIRECT">, C<"VPC_ENDPOINT">
=head2 ConnectionProperties => L<Paws::OpenSearch::ConnectionProperties>

The C<ConnectionProperties> for the newly created connection.


=head2 ConnectionStatus => L<Paws::OpenSearch::OutboundConnectionStatus>

The status of the connection.


=head2 LocalDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

Information about the source (local) domain.


=head2 RemoteDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

Information about the destination (remote) domain.


=head2 _request_id => Str


=cut

