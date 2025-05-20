
package Paws::Rekognition::DescribeStreamProcessorResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has DataSharingPreference => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorDataSharingPreference');
  has Input => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorInput');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastUpdateTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorNotificationChannel');
  has Output => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorOutput');
  has RegionsOfInterest => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::RegionOfInterest]');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorSettings');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StreamProcessorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeStreamProcessorResponse

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

Date and time the stream processor was created


=head2 DataSharingPreference => L<Paws::Rekognition::StreamProcessorDataSharingPreference>

Shows whether you are sharing data with Rekognition to improve model
performance. You can choose this option at the account level or on a
per-stream basis. Note that if you opt out at the account level this
setting is ignored on individual streams.


=head2 Input => L<Paws::Rekognition::StreamProcessorInput>

Kinesis video stream that provides the source streaming video.


=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
This is an optional parameter for label detection stream processors.


=head2 LastUpdateTimestamp => Str

The time, in Unix format, the stream processor was last updated. For
example, when the stream processor moves from a running state to a
failed state, or when the user starts or stops the stream processor.


=head2 Name => Str

Name of the stream processor.


=head2 NotificationChannel => L<Paws::Rekognition::StreamProcessorNotificationChannel>




=head2 Output => L<Paws::Rekognition::StreamProcessorOutput>

Kinesis data stream to which Amazon Rekognition Video puts the analysis
results.


=head2 RegionsOfInterest => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]

Specifies locations in the frames where Amazon Rekognition checks for
objects or people. This is an optional parameter for label detection
stream processors.


=head2 RoleArn => Str

ARN of the IAM role that allows access to the stream processor.


=head2 Settings => L<Paws::Rekognition::StreamProcessorSettings>

Input parameters used in a streaming video analyzed by a stream
processor. You can use C<FaceSearch> to recognize faces in a streaming
video, or you can use C<ConnectedHome> to detect labels.


=head2 Status => Str

Current status of the stream processor.

Valid values are: C<"STOPPED">, C<"STARTING">, C<"RUNNING">, C<"FAILED">, C<"STOPPING">, C<"UPDATING">
=head2 StatusMessage => Str

Detailed status message about the stream processor.


=head2 StreamProcessorArn => Str

ARN of the stream processor.


=head2 _request_id => Str


=cut

1;