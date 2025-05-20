
package Paws::KafkaConnect::DeleteConnector;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectorArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'currentVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors/{connectorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DeleteConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DeleteConnector - Arguments for method DeleteConnector on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnector on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DeleteConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnector.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DeleteConnectorResponse = $kafkaconnect->DeleteConnector(
      ConnectorArn   => 'My__string',
      CurrentVersion => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ConnectorArn   = $DeleteConnectorResponse->ConnectorArn;
    my $ConnectorState = $DeleteConnectorResponse->ConnectorState;

    # Returns a L<Paws::KafkaConnect::DeleteConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DeleteConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector that you want to
delete.



=head2 CurrentVersion => Str

The current version of the connector that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnector in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

