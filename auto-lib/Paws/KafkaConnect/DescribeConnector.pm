
package Paws::KafkaConnect::DescribeConnector;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors/{connectorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DescribeConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeConnector - Arguments for method DescribeConnector on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnector on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DescribeConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnector.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DescribeConnectorResponse = $kafkaconnect->DescribeConnector(
      ConnectorArn => 'My__string',

    );

    # Results:
    my $Capacity     = $DescribeConnectorResponse->Capacity;
    my $ConnectorArn = $DescribeConnectorResponse->ConnectorArn;
    my $ConnectorConfiguration =
      $DescribeConnectorResponse->ConnectorConfiguration;
    my $ConnectorDescription = $DescribeConnectorResponse->ConnectorDescription;
    my $ConnectorName        = $DescribeConnectorResponse->ConnectorName;
    my $ConnectorState       = $DescribeConnectorResponse->ConnectorState;
    my $CreationTime         = $DescribeConnectorResponse->CreationTime;
    my $CurrentVersion       = $DescribeConnectorResponse->CurrentVersion;
    my $KafkaCluster         = $DescribeConnectorResponse->KafkaCluster;
    my $KafkaClusterClientAuthentication =
      $DescribeConnectorResponse->KafkaClusterClientAuthentication;
    my $KafkaClusterEncryptionInTransit =
      $DescribeConnectorResponse->KafkaClusterEncryptionInTransit;
    my $KafkaConnectVersion = $DescribeConnectorResponse->KafkaConnectVersion;
    my $LogDelivery         = $DescribeConnectorResponse->LogDelivery;
    my $Plugins             = $DescribeConnectorResponse->Plugins;
    my $ServiceExecutionRoleArn =
      $DescribeConnectorResponse->ServiceExecutionRoleArn;
    my $StateDescription    = $DescribeConnectorResponse->StateDescription;
    my $WorkerConfiguration = $DescribeConnectorResponse->WorkerConfiguration;

    # Returns a L<Paws::KafkaConnect::DescribeConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DescribeConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnector in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

