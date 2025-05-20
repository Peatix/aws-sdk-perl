
package Paws::IoTFleetWise::GetCampaignResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has CollectionScheme => (is => 'ro', isa => 'Paws::IoTFleetWise::CollectionScheme', traits => ['NameInRequest'], request_name => 'collectionScheme' );
  has Compression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'compression' );
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' );
  has DataDestinationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::DataDestinationConfig]', traits => ['NameInRequest'], request_name => 'dataDestinationConfigs' );
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has DataPartitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::DataPartition]', traits => ['NameInRequest'], request_name => 'dataPartitions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DiagnosticsMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diagnosticsMode' );
  has ExpiryTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiryTime' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has PostTriggerCollectionDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'postTriggerCollectionDuration' );
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority' );
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' );
  has SignalsToCollect => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalInformation]', traits => ['NameInRequest'], request_name => 'signalsToCollect' );
  has SignalsToFetch => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalFetchInformation]', traits => ['NameInRequest'], request_name => 'signalsToFetch' );
  has SpoolingMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spoolingMode' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetCampaignResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 CollectionScheme => L<Paws::IoTFleetWise::CollectionScheme>

Information about the data collection scheme associated with the
campaign.


=head2 Compression => Str

Whether to compress signals before transmitting data to Amazon Web
Services IoT FleetWise. If C<OFF> is specified, the signals aren't
compressed. If it's not specified, C<SNAPPY> is used.

Valid values are: C<"OFF">, C<"SNAPPY">
=head2 CreationTime => Str

The time the campaign was created in seconds since epoch (January 1,
1970 at midnight UTC time).


=head2 DataDestinationConfigs => ArrayRef[L<Paws::IoTFleetWise::DataDestinationConfig>]

The destination where the campaign sends data. You can send data to an
MQTT topic, or store it in Amazon S3 or Amazon Timestream.

MQTT is the publish/subscribe messaging protocol used by Amazon Web
Services IoT to communicate with your devices.

Amazon S3 optimizes the cost of data storage and provides additional
mechanisms to use vehicle data, such as data lakes, centralized data
storage, data processing pipelines, and analytics.

You can use Amazon Timestream to access and analyze time series data,
and Timestream to query vehicle data so that you can identify trends
and patterns.


=head2 DataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes associated with the campaign.


=head2 DataPartitions => ArrayRef[L<Paws::IoTFleetWise::DataPartition>]

The data partitions associated with the signals collected from the
vehicle.


=head2 Description => Str

The description of the campaign.


=head2 DiagnosticsMode => Str

Option for a vehicle to send diagnostic trouble codes to Amazon Web
Services IoT FleetWise.

Valid values are: C<"OFF">, C<"SEND_ACTIVE_DTCS">
=head2 ExpiryTime => Str

The time the campaign expires, in seconds since epoch (January 1, 1970
at midnight UTC time). Vehicle data won't be collected after the
campaign expires.


=head2 LastModificationTime => Str

The last time the campaign was modified.


=head2 Name => Str

The name of the campaign.


=head2 PostTriggerCollectionDuration => Int

How long (in seconds) to collect raw data after a triggering event
initiates the collection.


=head2 Priority => Int

A number indicating the priority of one campaign over another campaign
for a certain vehicle or fleet. A campaign with the lowest value is
deployed to vehicles before any other campaigns.


=head2 SignalCatalogArn => Str

The ARN of a signal catalog.


=head2 SignalsToCollect => ArrayRef[L<Paws::IoTFleetWise::SignalInformation>]

Information about a list of signals to collect data on.


=head2 SignalsToFetch => ArrayRef[L<Paws::IoTFleetWise::SignalFetchInformation>]

Information about a list of signals to fetch data from.


=head2 SpoolingMode => Str

Whether to store collected data after a vehicle lost a connection with
the cloud. After a connection is re-established, the data is
automatically forwarded to Amazon Web Services IoT FleetWise.

Valid values are: C<"OFF">, C<"TO_DISK">
=head2 StartTime => Str

The time, in milliseconds, to deliver a campaign after it was approved.


=head2 Status => Str

The state of the campaign. The status can be one of: C<CREATING>,
C<WAITING_FOR_APPROVAL>, C<RUNNING>, and C<SUSPENDED>.

Valid values are: C<"CREATING">, C<"WAITING_FOR_APPROVAL">, C<"RUNNING">, C<"SUSPENDED">
=head2 TargetArn => Str

The ARN of the vehicle or the fleet targeted by the campaign.


=head2 _request_id => Str


=cut

1;