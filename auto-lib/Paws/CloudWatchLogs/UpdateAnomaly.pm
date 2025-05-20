
package Paws::CloudWatchLogs::UpdateAnomaly;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorArn' , required => 1);
  has AnomalyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyId' );
  has Baseline => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'baseline' );
  has PatternId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'patternId' );
  has SuppressionPeriod => (is => 'ro', isa => 'Paws::CloudWatchLogs::SuppressionPeriod', traits => ['NameInRequest'], request_name => 'suppressionPeriod' );
  has SuppressionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suppressionType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnomaly');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::UpdateAnomaly - Arguments for method UpdateAnomaly on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnomaly on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method UpdateAnomaly.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnomaly.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->UpdateAnomaly(
      AnomalyDetectorArn => 'MyAnomalyDetectorArn',
      AnomalyId          => 'MyAnomalyId',            # OPTIONAL
      Baseline           => 1,                        # OPTIONAL
      PatternId          => 'MyPatternId',            # OPTIONAL
      SuppressionPeriod  => {
        SuppressionUnit =>
          'SECONDS',    # values: SECONDS, MINUTES, HOURS; OPTIONAL
        Value => 1,     # OPTIONAL
      },    # OPTIONAL
      SuppressionType => 'LIMITED',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/UpdateAnomaly>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the anomaly detector that this operation is to act on.



=head2 AnomalyId => Str

If you are suppressing or unsuppressing an anomaly, specify its unique
ID here. You can find anomaly IDs by using the ListAnomalies
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html)
operation.



=head2 Baseline => Bool

Set this to C<true> to prevent CloudWatch Logs from displaying this
behavior as an anomaly in the future. The behavior is then treated as
baseline behavior. However, if similar but more severe occurrences of
this behavior occur in the future, those will still be reported as
anomalies.

The default is C<false>



=head2 PatternId => Str

If you are suppressing or unsuppressing an pattern, specify its unique
ID here. You can find pattern IDs by using the ListAnomalies
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html)
operation.



=head2 SuppressionPeriod => L<Paws::CloudWatchLogs::SuppressionPeriod>

If you are temporarily suppressing an anomaly or pattern, use this
structure to specify how long the suppression is to last.



=head2 SuppressionType => Str

Use this to specify whether the suppression to be temporary or
infinite. If you specify C<LIMITED>, you must also specify a
C<suppressionPeriod>. If you specify C<INFINITE>, any value for
C<suppressionPeriod> is ignored.

Valid values are: C<"LIMITED">, C<"INFINITE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnomaly in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

