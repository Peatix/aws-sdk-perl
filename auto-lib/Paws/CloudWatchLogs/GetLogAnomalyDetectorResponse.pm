
package Paws::CloudWatchLogs::GetLogAnomalyDetectorResponse;
  use Moose;
  has AnomalyDetectorStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorStatus' );
  has AnomalyVisibilityTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'anomalyVisibilityTime' );
  has CreationTimeStamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'creationTimeStamp' );
  has DetectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorName' );
  has EvaluationFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationFrequency' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has LastModifiedTimeStamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTimeStamp' );
  has LogGroupArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupArnList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogAnomalyDetectorResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorStatus => Str

Specifies whether the anomaly detector is currently active. To change
its status, use the C<enabled> parameter in the
UpdateLogAnomalyDetector
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateLogAnomalyDetector.html)
operation.

Valid values are: C<"INITIALIZING">, C<"TRAINING">, C<"ANALYZING">, C<"FAILED">, C<"DELETED">, C<"PAUSED">
=head2 AnomalyVisibilityTime => Int

The number of days used as the life cycle of anomalies. After this
time, anomalies are automatically baselined and the anomaly detector
model will treat new occurrences of similar event as normal.


=head2 CreationTimeStamp => Int

The date and time when this anomaly detector was created.


=head2 DetectorName => Str

The name of the log anomaly detector


=head2 EvaluationFrequency => Str

Specifies how often the anomaly detector runs and look for anomalies.
Set this value according to the frequency that the log group receives
new logs. For example, if the log group receives new log events every
10 minutes, then setting C<evaluationFrequency> to C<FIFTEEN_MIN> might
be appropriate.

Valid values are: C<"ONE_MIN">, C<"FIVE_MIN">, C<"TEN_MIN">, C<"FIFTEEN_MIN">, C<"THIRTY_MIN">, C<"ONE_HOUR">
=head2 FilterPattern => Str




=head2 KmsKeyId => Str

The ARN of the KMS key assigned to this anomaly detector, if any.


=head2 LastModifiedTimeStamp => Int

The date and time when this anomaly detector was most recently
modified.


=head2 LogGroupArnList => ArrayRef[Str|Undef]

An array of structures, where each structure contains the ARN of a log
group associated with this anomaly detector.


=head2 _request_id => Str


=cut

1;