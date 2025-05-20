
package Paws::CloudWatchLogs::CreateLogAnomalyDetector;
  use Moose;
  has AnomalyVisibilityTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'anomalyVisibilityTime' );
  has DetectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorName' );
  has EvaluationFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationFrequency' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has LogGroupArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupArnList' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogAnomalyDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::CreateLogAnomalyDetectorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateLogAnomalyDetector - Arguments for method CreateLogAnomalyDetector on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLogAnomalyDetector on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method CreateLogAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLogAnomalyDetector.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $CreateLogAnomalyDetectorResponse = $logs->CreateLogAnomalyDetector(
      LogGroupArnList => [
        'MyLogGroupArn', ...    # min: 1, max: 2048
      ],
      AnomalyVisibilityTime => 1,                        # OPTIONAL
      DetectorName          => 'MyDetectorName',         # OPTIONAL
      EvaluationFrequency   => 'ONE_MIN',                # OPTIONAL
      FilterPattern         => 'MyFilterPattern',        # OPTIONAL
      KmsKeyId              => 'MyDetectorKmsKeyArn',    # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AnomalyDetectorArn =
      $CreateLogAnomalyDetectorResponse->AnomalyDetectorArn;

   # Returns a L<Paws::CloudWatchLogs::CreateLogAnomalyDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/CreateLogAnomalyDetector>

=head1 ATTRIBUTES


=head2 AnomalyVisibilityTime => Int

The number of days to have visibility on an anomaly. After this time
period has elapsed for an anomaly, it will be automatically baselined
and the anomaly detector will treat new occurrences of a similar
anomaly as normal. Therefore, if you do not correct the cause of an
anomaly during the time period specified in C<anomalyVisibilityTime>,
it will be considered normal going forward and will not be detected as
an anomaly.



=head2 DetectorName => Str

A name for this anomaly detector.



=head2 EvaluationFrequency => Str

Specifies how often the anomaly detector is to run and look for
anomalies. Set this value according to the frequency that the log group
receives new logs. For example, if the log group receives new log
events every 10 minutes, then 15 minutes might be a good setting for
C<evaluationFrequency> .

Valid values are: C<"ONE_MIN">, C<"FIVE_MIN">, C<"TEN_MIN">, C<"FIFTEEN_MIN">, C<"THIRTY_MIN">, C<"ONE_HOUR">

=head2 FilterPattern => Str

You can use this parameter to limit the anomaly detection model to
examine only log events that match the pattern you specify here. For
more information, see Filter and Pattern Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).



=head2 KmsKeyId => Str

Optionally assigns a KMS key to secure this anomaly detector and its
findings. If a key is assigned, the anomalies found and the model used
by this detector are encrypted at rest with the key. If a key is
assigned to an anomaly detector, a user must have permissions for both
this key and for the anomaly detector to retrieve information about the
anomalies that it finds.

Make sure the value provided is a valid KMS key ARN. For more
information about using a KMS key and to see the required IAM policy,
see Use a KMS key with an anomaly detector
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/LogsAnomalyDetection-KMS.html).



=head2 B<REQUIRED> LogGroupArnList => ArrayRef[Str|Undef]

An array containing the ARN of the log group that this anomaly detector
will watch. You can specify only one log group ARN.



=head2 Tags => L<Paws::CloudWatchLogs::Tags>

An optional list of key-value pairs to associate with the resource.

For more information about tagging, see Tagging Amazon Web Services
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLogAnomalyDetector in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

