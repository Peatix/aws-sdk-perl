
package Paws::KafkaConnect::CreateConnector;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Paws::KafkaConnect::Capacity', traits => ['NameInRequest'], request_name => 'capacity', required => 1);
  has ConnectorConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::ConnectorConfiguration', traits => ['NameInRequest'], request_name => 'connectorConfiguration', required => 1);
  has ConnectorDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorDescription');
  has ConnectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorName', required => 1);
  has KafkaCluster => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaCluster', traits => ['NameInRequest'], request_name => 'kafkaCluster', required => 1);
  has KafkaClusterClientAuthentication => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaClusterClientAuthentication', traits => ['NameInRequest'], request_name => 'kafkaClusterClientAuthentication', required => 1);
  has KafkaClusterEncryptionInTransit => (is => 'ro', isa => 'Paws::KafkaConnect::KafkaClusterEncryptionInTransit', traits => ['NameInRequest'], request_name => 'kafkaClusterEncryptionInTransit', required => 1);
  has KafkaConnectVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kafkaConnectVersion', required => 1);
  has LogDelivery => (is => 'ro', isa => 'Paws::KafkaConnect::LogDelivery', traits => ['NameInRequest'], request_name => 'logDelivery');
  has Plugins => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::Plugin]', traits => ['NameInRequest'], request_name => 'plugins', required => 1);
  has ServiceExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceExecutionRoleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::KafkaConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has WorkerConfiguration => (is => 'ro', isa => 'Paws::KafkaConnect::WorkerConfiguration', traits => ['NameInRequest'], request_name => 'workerConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::CreateConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateConnector - Arguments for method CreateConnector on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnector on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method CreateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnector.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $CreateConnectorResponse = $kafkaconnect->CreateConnector(
      Capacity => {
        AutoScaling => {
          MaxWorkerCount => 1,
          McuCount       => 1,    # min: 1, max: 8
          MinWorkerCount => 1,
          ScaleInPolicy  => {
            CpuUtilizationPercentage => 1,    # min: 1, max: 100

          },    # OPTIONAL
          ScaleOutPolicy => {
            CpuUtilizationPercentage => 1,    # min: 1, max: 100

          },    # OPTIONAL
        },    # OPTIONAL
        ProvisionedCapacity => {
          McuCount    => 1,    # min: 1, max: 8
          WorkerCount => 1,

        },    # OPTIONAL
      },
      ConnectorConfiguration => { 'My__string' => 'My__string', },
      ConnectorName          => 'My__stringMin1Max128',
      KafkaCluster           => {
        ApacheKafkaCluster => {
          BootstrapServers => 'My__string',
          Vpc              => {
            Subnets        => [ 'My__string', ... ],
            SecurityGroups => [ 'My__string', ... ],
          },

        },

      },
      KafkaClusterClientAuthentication => {
        AuthenticationType => 'NONE',    # values: NONE, IAM

      },
      KafkaClusterEncryptionInTransit => {
        EncryptionType => 'PLAINTEXT',    # values: PLAINTEXT, TLS

      },
      KafkaConnectVersion => 'My__string',
      Plugins             => [
        {
          CustomPlugin => {
            CustomPluginArn => 'My__string',
            Revision        => 1,             # min: 1, max: 9223372036854775807

          },

        },
        ...
      ],
      ServiceExecutionRoleArn => 'My__string',
      ConnectorDescription    => 'My__stringMax1024',    # OPTIONAL
      LogDelivery             => {
        WorkerLogDelivery => {
          CloudWatchLogs => {
            Enabled  => 1,
            LogGroup => 'My__string',
          },    # OPTIONAL
          Firehose => {
            Enabled        => 1,
            DeliveryStream => 'My__string',
          },    # OPTIONAL
          S3 => {
            Enabled => 1,
            Bucket  => 'My__string',
            Prefix  => 'My__string',
          },    # OPTIONAL
        },

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkerConfiguration => {
        Revision               => 1,    # min: 1, max: 9223372036854775807
        WorkerConfigurationArn => 'My__string',

      },    # OPTIONAL
    );

    # Results:
    my $ConnectorArn   = $CreateConnectorResponse->ConnectorArn;
    my $ConnectorName  = $CreateConnectorResponse->ConnectorName;
    my $ConnectorState = $CreateConnectorResponse->ConnectorState;

    # Returns a L<Paws::KafkaConnect::CreateConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/CreateConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capacity => L<Paws::KafkaConnect::Capacity>

Information about the capacity allocated to the connector. Exactly one
of the two properties must be specified.



=head2 B<REQUIRED> ConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfiguration>

A map of keys to values that represent the configuration for the
connector.



=head2 ConnectorDescription => Str

A summary description of the connector.



=head2 B<REQUIRED> ConnectorName => Str

The name of the connector.



=head2 B<REQUIRED> KafkaCluster => L<Paws::KafkaConnect::KafkaCluster>

Specifies which Apache Kafka cluster to connect to.



=head2 B<REQUIRED> KafkaClusterClientAuthentication => L<Paws::KafkaConnect::KafkaClusterClientAuthentication>

Details of the client authentication used by the Apache Kafka cluster.



=head2 B<REQUIRED> KafkaClusterEncryptionInTransit => L<Paws::KafkaConnect::KafkaClusterEncryptionInTransit>

Details of encryption in transit to the Apache Kafka cluster.



=head2 B<REQUIRED> KafkaConnectVersion => Str

The version of Kafka Connect. It has to be compatible with both the
Apache Kafka cluster's version and the plugins.



=head2 LogDelivery => L<Paws::KafkaConnect::LogDelivery>

Details about log delivery.



=head2 B<REQUIRED> Plugins => ArrayRef[L<Paws::KafkaConnect::Plugin>]

Amazon MSK Connect does not currently support specifying multiple
plugins as a list. To use more than one plugin for your connector, you
can create a single custom plugin using a ZIP file that bundles
multiple plugins together.

Specifies which plugin to use for the connector. You must specify a
single-element list containing one C<customPlugin> object.



=head2 B<REQUIRED> ServiceExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used by the connector to
access the Amazon Web Services resources that it needs. The types of
resources depends on the logic of the connector. For example, a
connector that has Amazon S3 as a destination must have permissions
that allow it to write to the S3 destination bucket.



=head2 Tags => L<Paws::KafkaConnect::Tags>

The tags you want to attach to the connector.



=head2 WorkerConfiguration => L<Paws::KafkaConnect::WorkerConfiguration>

Specifies which worker configuration to use with the connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnector in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

