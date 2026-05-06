
package Paws::OpenSearch::CreateOutboundConnection;
  use Moose;
  has ConnectionAlias => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionMode => (is => 'ro', isa => 'Str');
  has ConnectionProperties => (is => 'ro', isa => 'Paws::OpenSearch::ConnectionProperties');
  has LocalDomainInfo => (is => 'ro', isa => 'Paws::OpenSearch::DomainInformationContainer', required => 1);
  has RemoteDomainInfo => (is => 'ro', isa => 'Paws::OpenSearch::DomainInformationContainer', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOutboundConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/cc/outboundConnection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::CreateOutboundConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateOutboundConnection - Arguments for method CreateOutboundConnection on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOutboundConnection on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method CreateOutboundConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOutboundConnection.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $CreateOutboundConnectionResponse = $es->CreateOutboundConnection(
      ConnectionAlias => 'MyConnectionAlias',
      LocalDomainInfo => {
        AWSDomainInformation => {
          DomainName => 'MyDomainName',    # min: 3, max: 28
          OwnerId    => 'MyOwnerId',       # min: 12, max: 12; OPTIONAL
          Region     => 'MyRegion',        # min: 5, max: 30; OPTIONAL
        },    # OPTIONAL
      },
      RemoteDomainInfo => {
        AWSDomainInformation => {
          DomainName => 'MyDomainName',    # min: 3, max: 28
          OwnerId    => 'MyOwnerId',       # min: 12, max: 12; OPTIONAL
          Region     => 'MyRegion',        # min: 5, max: 30; OPTIONAL
        },    # OPTIONAL
      },
      ConnectionMode       => 'DIRECT',    # OPTIONAL
      ConnectionProperties => {
        CrossClusterSearch => {
          SkipUnavailable => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        Endpoint => 'MyEndpoint',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConnectionAlias = $CreateOutboundConnectionResponse->ConnectionAlias;
    my $ConnectionId    = $CreateOutboundConnectionResponse->ConnectionId;
    my $ConnectionMode  = $CreateOutboundConnectionResponse->ConnectionMode;
    my $ConnectionProperties =
      $CreateOutboundConnectionResponse->ConnectionProperties;
    my $ConnectionStatus = $CreateOutboundConnectionResponse->ConnectionStatus;
    my $LocalDomainInfo  = $CreateOutboundConnectionResponse->LocalDomainInfo;
    my $RemoteDomainInfo = $CreateOutboundConnectionResponse->RemoteDomainInfo;

    # Returns a L<Paws::OpenSearch::CreateOutboundConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionAlias => Str

Name of the connection.



=head2 ConnectionMode => Str

The connection mode.

Valid values are: C<"DIRECT">, C<"VPC_ENDPOINT">

=head2 ConnectionProperties => L<Paws::OpenSearch::ConnectionProperties>

The C<ConnectionProperties> for the outbound connection.



=head2 B<REQUIRED> LocalDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

Name and Region of the source (local) domain.



=head2 B<REQUIRED> RemoteDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

Name and Region of the destination (remote) domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOutboundConnection in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

