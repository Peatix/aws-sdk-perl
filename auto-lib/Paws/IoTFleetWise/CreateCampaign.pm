
package Paws::IoTFleetWise::CreateCampaign;
  use Moose;
  has CollectionScheme => (is => 'ro', isa => 'Paws::IoTFleetWise::CollectionScheme', traits => ['NameInRequest'], request_name => 'collectionScheme' , required => 1);
  has Compression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'compression' );
  has DataDestinationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::DataDestinationConfig]', traits => ['NameInRequest'], request_name => 'dataDestinationConfigs' );
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has DataPartitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::DataPartition]', traits => ['NameInRequest'], request_name => 'dataPartitions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DiagnosticsMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diagnosticsMode' );
  has ExpiryTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiryTime' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has PostTriggerCollectionDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'postTriggerCollectionDuration' );
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority' );
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' , required => 1);
  has SignalsToCollect => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalInformation]', traits => ['NameInRequest'], request_name => 'signalsToCollect' );
  has SignalsToFetch => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalFetchInformation]', traits => ['NameInRequest'], request_name => 'signalsToFetch' );
  has SpoolingMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spoolingMode' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateCampaign - Arguments for method CreateCampaign on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCampaign on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCampaign.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateCampaignResponse = $iotfleetwise->CreateCampaign(
      CollectionScheme => {
        ConditionBasedCollectionScheme => {
          Expression               => 'MyeventExpression',   # min: 1, max: 2048
          ConditionLanguageVersion => 1,    # min: 1, max: 1; OPTIONAL
          MinimumTriggerIntervalMs => 1,    # max: 4294967295; OPTIONAL
          TriggerMode => 'ALWAYS',    # values: ALWAYS, RISING_EDGE; OPTIONAL
        },    # OPTIONAL
        TimeBasedCollectionScheme => {
          PeriodMs => 1,    # min: 10000, max: 86400000

        },    # OPTIONAL
      },
      Name                   => 'MycampaignName',
      SignalCatalogArn       => 'Myarn',
      TargetArn              => 'Myarn',
      Compression            => 'OFF',              # OPTIONAL
      DataDestinationConfigs => [
        {
          MqttTopicConfig => {
            ExecutionRoleArn => 'MyIAMRoleArn',      # min: 20, max: 2048
            MqttTopicArn     => 'MyMqttTopicArn',    # min: 20, max: 2048

          },    # OPTIONAL
          S3Config => {
            BucketArn  => 'MyS3BucketArn',    # min: 16, max: 100
            DataFormat => 'JSON',             # values: JSON, PARQUET; OPTIONAL
            Prefix     => 'MyPrefix',         # min: 1, max: 512; OPTIONAL
            StorageCompressionFormat => 'NONE',   # values: NONE, GZIP; OPTIONAL
          },    # OPTIONAL
          TimestreamConfig => {
            ExecutionRoleArn   => 'MyIAMRoleArn',           # min: 20, max: 2048
            TimestreamTableArn => 'MyTimestreamTableArn',   # min: 20, max: 2048

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DataExtraDimensions => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      DataPartitions => [
        {
          Id             => 'MyDataPartitionId',    # min: 1, max: 128
          StorageOptions => {
            MaximumSize => {
              Unit  => 'MB',    # values: MB, GB, TB
              Value => 1,       # min: 1, max: 1073741824

            },
            MinimumTimeToLive => {
              Unit  => 'HOURS',    # values: HOURS, DAYS, WEEKS
              Value => 1,          # min: 1, max: 876600

            },
            StorageLocation => 'MyStorageLocation',    # min: 1, max: 4096

          },
          UploadOptions => {
            Expression               => 'MyeventExpression', # min: 1, max: 2048
            ConditionLanguageVersion => 1,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description                   => 'Mydescription',          # OPTIONAL
      DiagnosticsMode               => 'OFF',                    # OPTIONAL
      ExpiryTime                    => '1970-01-01T01:00:00',    # OPTIONAL
      PostTriggerCollectionDuration => 1,                        # OPTIONAL
      Priority                      => 1,                        # OPTIONAL
      SignalsToCollect              => [
        {
          Name            => 'MywildcardSignalName',    # min: 1, max: 150
          DataPartitionId => 'MyDataPartitionId',       # min: 1, max: 128
          MaxSampleCount            => 1,    # min: 1, max: 4294967295; OPTIONAL
          MinimumSamplingIntervalMs => 1,    # max: 4294967295; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SignalsToFetch => [
        {
          Actions => [
            'MyactionEventExpression', ...    # min: 1, max: 100
          ],    # min: 1, max: 2
          FullyQualifiedName => 'MyNodePath',    # min: 1, max: 150
          SignalFetchConfig  => {
            ConditionBased => {
              ConditionExpression =>
                'MyfetchConfigEventExpression',    # min: 1, max: 400
              TriggerMode => 'ALWAYS',   # values: ALWAYS, RISING_EDGE; OPTIONAL

            },    # OPTIONAL
            TimeBased => {
              ExecutionFrequencyMs => 1,    # min: 1, max: 9223372036854775807

            },    # OPTIONAL
          },
          ConditionLanguageVersion => 1,    # min: 1, max: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SpoolingMode => 'OFF',                    # OPTIONAL
      StartTime    => '1970-01-01T01:00:00',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateCampaignResponse->Arn;
    my $Name = $CreateCampaignResponse->Name;

    # Returns a L<Paws::IoTFleetWise::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionScheme => L<Paws::IoTFleetWise::CollectionScheme>

The data collection scheme associated with the campaign. You can
specify a scheme that collects data based on time or an event.



=head2 Compression => Str

Determines whether to compress signals before transmitting data to
Amazon Web Services IoT FleetWise. If you don't want to compress the
signals, use C<OFF>. If it's not specified, C<SNAPPY> is used.

Default: C<SNAPPY>

Valid values are: C<"OFF">, C<"SNAPPY">

=head2 DataDestinationConfigs => ArrayRef[L<Paws::IoTFleetWise::DataDestinationConfig>]

The destination where the campaign sends data. You can send data to an
MQTT topic, or store it in Amazon S3 or Amazon Timestream.

MQTT is the publish/subscribe messaging protocol used by Amazon Web
Services IoT to communicate with your devices.

Amazon S3 optimizes the cost of data storage and provides additional
mechanisms to use vehicle data, such as data lakes, centralized data
storage, data processing pipelines, and analytics. Amazon Web Services
IoT FleetWise supports at-least-once file delivery to S3. Your vehicle
data is stored on multiple Amazon Web Services IoT FleetWise servers
for redundancy and high availability.

You can use Amazon Timestream to access and analyze time series data,
and Timestream to query vehicle data so that you can identify trends
and patterns.



=head2 DataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with a campaign.

Enrich the data with specified vehicle attributes. For example, add
C<make> and C<model> to the campaign, and Amazon Web Services IoT
FleetWise will associate the data with those attributes as dimensions
in Amazon Timestream. You can then query the data against C<make> and
C<model>.

Default: An empty array



=head2 DataPartitions => ArrayRef[L<Paws::IoTFleetWise::DataPartition>]

The data partitions associated with the signals collected from the
vehicle.



=head2 Description => Str

An optional description of the campaign to help identify its purpose.



=head2 DiagnosticsMode => Str

Option for a vehicle to send diagnostic trouble codes to Amazon Web
Services IoT FleetWise. If you want to send diagnostic trouble codes,
use C<SEND_ACTIVE_DTCS>. If it's not specified, C<OFF> is used.

Default: C<OFF>

Valid values are: C<"OFF">, C<"SEND_ACTIVE_DTCS">

=head2 ExpiryTime => Str

The time the campaign expires, in seconds since epoch (January 1, 1970
at midnight UTC time). Vehicle data isn't collected after the campaign
expires.

Default: 253402214400 (December 31, 9999, 00:00:00 UTC)



=head2 B<REQUIRED> Name => Str

The name of the campaign to create.



=head2 PostTriggerCollectionDuration => Int

How long (in milliseconds) to collect raw data after a triggering event
initiates the collection. If it's not specified, C<0> is used.

Default: C<0>



=head2 Priority => Int

A number indicating the priority of one campaign over another campaign
for a certain vehicle or fleet. A campaign with the lowest value is
deployed to vehicles before any other campaigns. If it's not specified,
C<0> is used.

Default: C<0>



=head2 B<REQUIRED> SignalCatalogArn => Str

The Amazon Resource Name (ARN) of the signal catalog to associate with
the campaign.



=head2 SignalsToCollect => ArrayRef[L<Paws::IoTFleetWise::SignalInformation>]

A list of information about signals to collect.

If you upload a signal as a condition in a data partition for a
campaign, then those same signals must be included in
C<signalsToCollect>.



=head2 SignalsToFetch => ArrayRef[L<Paws::IoTFleetWise::SignalFetchInformation>]

A list of information about signals to fetch.



=head2 SpoolingMode => Str

Determines whether to store collected data after a vehicle lost a
connection with the cloud. After a connection is re-established, the
data is automatically forwarded to Amazon Web Services IoT FleetWise.
If you want to store collected data when a vehicle loses connection
with the cloud, use C<TO_DISK>. If it's not specified, C<OFF> is used.

Default: C<OFF>

Valid values are: C<"OFF">, C<"TO_DISK">

=head2 StartTime => Str

The time, in milliseconds, to deliver a campaign after it was approved.
If it's not specified, C<0> is used.

Default: C<0>



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the campaign.



=head2 B<REQUIRED> TargetArn => Str

The ARN of the vehicle or fleet to deploy a campaign to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

