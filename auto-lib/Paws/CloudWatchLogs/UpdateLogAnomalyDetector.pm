
package Paws::CloudWatchLogs::UpdateLogAnomalyDetector;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorArn' , required => 1);
  has AnomalyVisibilityTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'anomalyVisibilityTime' );
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled' , required => 1);
  has EvaluationFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationFrequency' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLogAnomalyDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::UpdateLogAnomalyDetector - Arguments for method UpdateLogAnomalyDetector on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLogAnomalyDetector on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method UpdateLogAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLogAnomalyDetector.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->UpdateLogAnomalyDetector(
      AnomalyDetectorArn    => 'MyAnomalyDetectorArn',
      Enabled               => 1,
      AnomalyVisibilityTime => 1,                        # OPTIONAL
      EvaluationFrequency   => 'ONE_MIN',                # OPTIONAL
      FilterPattern         => 'MyFilterPattern',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/UpdateLogAnomalyDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the anomaly detector that you want to update.



=head2 AnomalyVisibilityTime => Int

The number of days to use as the life cycle of anomalies. After this
time, anomalies are automatically baselined and the anomaly detector
model will treat new occurrences of similar event as normal. Therefore,
if you do not correct the cause of an anomaly during this time, it will
be considered normal going forward and will not be detected.



=head2 B<REQUIRED> Enabled => Bool

Use this parameter to pause or restart the anomaly detector.



=head2 EvaluationFrequency => Str

Specifies how often the anomaly detector runs and look for anomalies.
Set this value according to the frequency that the log group receives
new logs. For example, if the log group receives new log events every
10 minutes, then setting C<evaluationFrequency> to C<FIFTEEN_MIN> might
be appropriate.

Valid values are: C<"ONE_MIN">, C<"FIVE_MIN">, C<"TEN_MIN">, C<"FIFTEEN_MIN">, C<"THIRTY_MIN">, C<"ONE_HOUR">

=head2 FilterPattern => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLogAnomalyDetector in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

