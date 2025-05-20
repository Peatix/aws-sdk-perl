
package Paws::KafkaConnect::ListConnectorOperations;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectorArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectorOperations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors/{connectorArn}/operations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::ListConnectorOperationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListConnectorOperations - Arguments for method ListConnectorOperations on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectorOperations on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method ListConnectorOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectorOperations.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $ListConnectorOperationsResponse =
      $kafkaconnect->ListConnectorOperations(
      ConnectorArn => 'My__string',
      MaxResults   => 1,               # OPTIONAL
      NextToken    => 'My__string',    # OPTIONAL
      );

    # Results:
    my $ConnectorOperations =
      $ListConnectorOperationsResponse->ConnectorOperations;
    my $NextToken = $ListConnectorOperationsResponse->NextToken;

    # Returns a L<Paws::KafkaConnect::ListConnectorOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/ListConnectorOperations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector for which to list
operations.



=head2 MaxResults => Int

Maximum number of connector operations to fetch in one get request.



=head2 NextToken => Str

If the response is truncated, it includes a NextToken. Send this
NextToken in a subsequent request to continue listing from where it
left off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectorOperations in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

