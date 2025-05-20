
package Paws::KafkaConnect::ListConnectors;
  use Moose;
  has ConnectorNamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'connectorNamePrefix');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::ListConnectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListConnectors - Arguments for method ListConnectors on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectors on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method ListConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectors.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $ListConnectorsResponse = $kafkaconnect->ListConnectors(
      ConnectorNamePrefix => 'My__string',    # OPTIONAL
      MaxResults          => 1,               # OPTIONAL
      NextToken           => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Connectors = $ListConnectorsResponse->Connectors;
    my $NextToken  = $ListConnectorsResponse->NextToken;

    # Returns a L<Paws::KafkaConnect::ListConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/ListConnectors>

=head1 ATTRIBUTES


=head2 ConnectorNamePrefix => Str

The name prefix that you want to use to search for and list connectors.



=head2 MaxResults => Int

The maximum number of connectors to list in one response.



=head2 NextToken => Str

If the response of a ListConnectors operation is truncated, it will
include a NextToken. Send this NextToken in a subsequent request to
continue listing from where the previous operation left off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectors in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

