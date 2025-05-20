
package Paws::CloudWatchLogs::GetLogAnomalyDetector;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogAnomalyDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetLogAnomalyDetectorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogAnomalyDetector - Arguments for method GetLogAnomalyDetector on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLogAnomalyDetector on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetLogAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLogAnomalyDetector.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetLogAnomalyDetectorResponse = $logs->GetLogAnomalyDetector(
      AnomalyDetectorArn => 'MyAnomalyDetectorArn',

    );

    # Results:
    my $AnomalyDetectorStatus =
      $GetLogAnomalyDetectorResponse->AnomalyDetectorStatus;
    my $AnomalyVisibilityTime =
      $GetLogAnomalyDetectorResponse->AnomalyVisibilityTime;
    my $CreationTimeStamp = $GetLogAnomalyDetectorResponse->CreationTimeStamp;
    my $DetectorName      = $GetLogAnomalyDetectorResponse->DetectorName;
    my $EvaluationFrequency =
      $GetLogAnomalyDetectorResponse->EvaluationFrequency;
    my $FilterPattern = $GetLogAnomalyDetectorResponse->FilterPattern;
    my $KmsKeyId      = $GetLogAnomalyDetectorResponse->KmsKeyId;
    my $LastModifiedTimeStamp =
      $GetLogAnomalyDetectorResponse->LastModifiedTimeStamp;
    my $LogGroupArnList = $GetLogAnomalyDetectorResponse->LogGroupArnList;

    # Returns a L<Paws::CloudWatchLogs::GetLogAnomalyDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetLogAnomalyDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the anomaly detector to retrieve information about. You can
find the ARNs of log anomaly detectors in your account by using the
ListLogAnomalyDetectors
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html)
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLogAnomalyDetector in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

