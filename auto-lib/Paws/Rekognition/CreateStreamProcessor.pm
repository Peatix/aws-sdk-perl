
package Paws::Rekognition::CreateStreamProcessor;
  use Moose;
  has DataSharingPreference => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorDataSharingPreference');
  has Input => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorInput', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorNotificationChannel');
  has Output => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorOutput', required => 1);
  has RegionsOfInterest => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::RegionOfInterest]');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorSettings', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateStreamProcessor - Arguments for method CreateStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateStreamProcessorResponse = $rekognition->CreateStreamProcessor(
      Input => {
        KinesisVideoStream => {
          Arn => 'MyKinesisVideoArn',    # OPTIONAL
        },    # OPTIONAL
      },
      Name   => 'MyStreamProcessorName',
      Output => {
        KinesisDataStream => {
          Arn => 'MyKinesisDataArn',    # OPTIONAL
        },    # OPTIONAL
        S3Destination => {
          Bucket    => 'MyS3Bucket',       # min: 3, max: 255; OPTIONAL
          KeyPrefix => 'MyS3KeyPrefix',    # max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      RoleArn  => 'MyRoleArn',
      Settings => {
        ConnectedHome => {
          Labels        => [ 'MyConnectedHomeLabel', ... ], # min: 1, max: 128
          MinConfidence => 1.0,                             # max: 100; OPTIONAL
        },    # OPTIONAL
        FaceSearch => {
          CollectionId       => 'MyCollectionId',   # min: 1, max: 255; OPTIONAL
          FaceMatchThreshold => 1.0,                # max: 100; OPTIONAL
        },    # OPTIONAL
      },
      DataSharingPreference => {
        OptIn => 1,

      },    # OPTIONAL
      KmsKeyId            => 'MyKmsKeyId',    # OPTIONAL
      NotificationChannel => {
        SNSTopicArn => 'MySNSTopicArn',

      },                                      # OPTIONAL
      RegionsOfInterest => [
        {
          BoundingBox => {
            Height => 1.0,    # OPTIONAL
            Left   => 1.0,    # OPTIONAL
            Top    => 1.0,    # OPTIONAL
            Width  => 1.0,    # OPTIONAL
          },    # OPTIONAL
          Polygon => [
            {
              X => 1.0,    # OPTIONAL
              Y => 1.0,    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $StreamProcessorArn = $CreateStreamProcessorResponse->StreamProcessorArn;

    # Returns a L<Paws::Rekognition::CreateStreamProcessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateStreamProcessor>

=head1 ATTRIBUTES


=head2 DataSharingPreference => L<Paws::Rekognition::StreamProcessorDataSharingPreference>

Shows whether you are sharing data with Rekognition to improve model
performance. You can choose this option at the account level or on a
per-stream basis. Note that if you opt out at the account level this
setting is ignored on individual streams.



=head2 B<REQUIRED> Input => L<Paws::Rekognition::StreamProcessorInput>

Kinesis video stream stream that provides the source streaming video.
If you are using the AWS CLI, the parameter name is
C<StreamProcessorInput>. This is required for both face search and
label detection stream processors.



=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
This is an optional parameter for label detection stream processors and
should not be used to create a face search stream processor. You can
supply the Amazon Resource Name (ARN) of your KMS key, the ID of your
KMS key, an alias for your KMS key, or an alias ARN. The key is used to
encrypt results and data published to your Amazon S3 bucket, which
includes image frames and hero images. Your source images are
unaffected.



=head2 B<REQUIRED> Name => Str

An identifier you assign to the stream processor. You can use C<Name>
to manage the stream processor. For example, you can get the current
status of the stream processor by calling DescribeStreamProcessor.
C<Name> is idempotent. This is required for both face search and label
detection stream processors.



=head2 NotificationChannel => L<Paws::Rekognition::StreamProcessorNotificationChannel>





=head2 B<REQUIRED> Output => L<Paws::Rekognition::StreamProcessorOutput>

Kinesis data stream stream or Amazon S3 bucket location to which Amazon
Rekognition Video puts the analysis results. If you are using the AWS
CLI, the parameter name is C<StreamProcessorOutput>. This must be a
S3Destination of an Amazon S3 bucket that you own for a label detection
stream processor or a Kinesis data stream ARN for a face search stream
processor.



=head2 RegionsOfInterest => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]

Specifies locations in the frames where Amazon Rekognition checks for
objects or people. You can specify up to 10 regions of interest, and
each region has either a polygon or a bounding box. This is an optional
parameter for label detection stream processors and should not be used
to create a face search stream processor.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Number (ARN) of the IAM role that allows access to
the stream processor. The IAM role provides Rekognition read
permissions for a Kinesis stream. It also provides write permissions to
an Amazon S3 bucket and Amazon Simple Notification Service topic for a
label detection stream processor. This is required for both face search
and label detection stream processors.



=head2 B<REQUIRED> Settings => L<Paws::Rekognition::StreamProcessorSettings>

Input parameters used in a streaming video analyzed by a stream
processor. You can use C<FaceSearch> to recognize faces in a streaming
video, or you can use C<ConnectedHome> to detect labels.



=head2 Tags => L<Paws::Rekognition::TagMap>

A set of tags (key-value pairs) that you want to attach to the stream
processor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

