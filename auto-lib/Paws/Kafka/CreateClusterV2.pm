
package Paws::Kafka::CreateClusterV2;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName', required => 1);
  has Provisioned => (is => 'ro', isa => 'Paws::Kafka::ProvisionedRequest', traits => ['NameInRequest'], request_name => 'provisioned');
  has Serverless => (is => 'ro', isa => 'Paws::Kafka::ServerlessRequest', traits => ['NameInRequest'], request_name => 'serverless');
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v2/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::CreateClusterV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateClusterV2 - Arguments for method CreateClusterV2 on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClusterV2 on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateClusterV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClusterV2.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateClusterV2Response = $kafka->CreateClusterV2(
      ClusterName => 'My__stringMin1Max64',
      Provisioned => {
        BrokerNodeGroupInfo => {
          ClientSubnets        => [ 'My__string', ... ],
          InstanceType         => 'My__stringMin5Max32',    # min: 5, max: 32
          BrokerAZDistribution => 'DEFAULT',    # values: DEFAULT; OPTIONAL
          ConnectivityInfo     => {
            PublicAccess    => { Type => 'My__string', },    # OPTIONAL
            VpcConnectivity => {
              ClientAuthentication => {
                Sasl => {
                  Iam => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  Scram => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Tls => {
                  Enabled => 1,    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SecurityGroups => [ 'My__string', ... ],
          StorageInfo    => {
            EbsStorageInfo => {
              ProvisionedThroughput => {
                Enabled          => 1,    # OPTIONAL
                VolumeThroughput => 1,    # OPTIONAL
              },    # OPTIONAL
              VolumeSize => 1,    # min: 1, max: 16384; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ZoneIds => [ 'My__string', ... ],
        },
        KafkaVersion         => 'My__stringMin1Max128',    # min: 1, max: 128
        NumberOfBrokerNodes  => 1,                         # min: 1, max: 15
        ClientAuthentication => {
          Sasl => {
            Iam => {
              Enabled => 1,    # OPTIONAL
            },    # OPTIONAL
            Scram => {
              Enabled => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Tls => {
            CertificateAuthorityArnList => [ 'My__string', ... ],
            Enabled                     => 1,                       # OPTIONAL
          },    # OPTIONAL
          Unauthenticated => {
            Enabled => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ConfigurationInfo => {
          Arn      => 'My__string',
          Revision => 1,

        },    # OPTIONAL
        EncryptionInfo => {
          EncryptionAtRest => {
            DataVolumeKMSKeyId => 'My__string',

          },    # OPTIONAL
          EncryptionInTransit => {
            ClientBroker =>
              'TLS',    # values: TLS, TLS_PLAINTEXT, PLAINTEXT; OPTIONAL
            InCluster => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        EnhancedMonitoring => 'DEFAULT'
        , # values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, PER_TOPIC_PER_PARTITION; OPTIONAL
        LoggingInfo => {
          BrokerLogs => {
            CloudWatchLogs => {
              Enabled  => 1,              # OPTIONAL
              LogGroup => 'My__string',
            },    # OPTIONAL
            Firehose => {
              Enabled        => 1,              # OPTIONAL
              DeliveryStream => 'My__string',
            },    # OPTIONAL
            S3 => {
              Enabled => 1,              # OPTIONAL
              Bucket  => 'My__string',
              Prefix  => 'My__string',
            },    # OPTIONAL
          },

        },    # OPTIONAL
        OpenMonitoring => {
          Prometheus => {
            JmxExporter => {
              EnabledInBroker => 1,    # OPTIONAL

            },    # OPTIONAL
            NodeExporter => {
              EnabledInBroker => 1,    # OPTIONAL

            },    # OPTIONAL
          },

        },    # OPTIONAL
        StorageMode => 'LOCAL',    # values: LOCAL, TIERED; OPTIONAL
      },    # OPTIONAL
      Serverless => {
        VpcConfigs => [
          {
            SubnetIds        => [ 'My__string', ... ],
            SecurityGroupIds => [ 'My__string', ... ],
          },
          ...
        ],
        ClientAuthentication => {
          Sasl => {
            Iam => {
              Enabled => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $ClusterArn  = $CreateClusterV2Response->ClusterArn;
    my $ClusterName = $CreateClusterV2Response->ClusterName;
    my $ClusterType = $CreateClusterV2Response->ClusterType;
    my $State       = $CreateClusterV2Response->State;

    # Returns a L<Paws::Kafka::CreateClusterV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateClusterV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 Provisioned => L<Paws::Kafka::ProvisionedRequest>

Information about the provisioned cluster.



=head2 Serverless => L<Paws::Kafka::ServerlessRequest>

Information about the serverless cluster.



=head2 Tags => L<Paws::Kafka::__mapOf__string>

A map of tags that you want the cluster to have.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClusterV2 in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

