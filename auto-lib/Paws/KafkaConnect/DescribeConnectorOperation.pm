
package Paws::KafkaConnect::DescribeConnectorOperation;
  use Moose;
  has ConnectorOperationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectorOperationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectorOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectorOperations/{connectorOperationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DescribeConnectorOperationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeConnectorOperation - Arguments for method DescribeConnectorOperation on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectorOperation on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DescribeConnectorOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectorOperation.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DescribeConnectorOperationResponse =
      $kafkaconnect->DescribeConnectorOperation(
      ConnectorOperationArn => 'My__string',

      );

    # Results:
    my $ConnectorArn = $DescribeConnectorOperationResponse->ConnectorArn;
    my $ConnectorOperationArn =
      $DescribeConnectorOperationResponse->ConnectorOperationArn;
    my $ConnectorOperationState =
      $DescribeConnectorOperationResponse->ConnectorOperationState;
    my $ConnectorOperationType =
      $DescribeConnectorOperationResponse->ConnectorOperationType;
    my $CreationTime   = $DescribeConnectorOperationResponse->CreationTime;
    my $EndTime        = $DescribeConnectorOperationResponse->EndTime;
    my $ErrorInfo      = $DescribeConnectorOperationResponse->ErrorInfo;
    my $OperationSteps = $DescribeConnectorOperationResponse->OperationSteps;
    my $OriginConnectorConfiguration =
      $DescribeConnectorOperationResponse->OriginConnectorConfiguration;
    my $OriginWorkerSetting =
      $DescribeConnectorOperationResponse->OriginWorkerSetting;
    my $TargetConnectorConfiguration =
      $DescribeConnectorOperationResponse->TargetConnectorConfiguration;
    my $TargetWorkerSetting =
      $DescribeConnectorOperationResponse->TargetWorkerSetting;

   # Returns a L<Paws::KafkaConnect::DescribeConnectorOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DescribeConnectorOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorOperationArn => Str

ARN of the connector operation to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectorOperation in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

