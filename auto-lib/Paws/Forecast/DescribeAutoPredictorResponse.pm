
package Paws::Forecast::DescribeAutoPredictorResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataConfig => (is => 'ro', isa => 'Paws::Forecast::DataConfig');
  has DatasetImportJobArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has ExplainabilityInfo => (is => 'ro', isa => 'Paws::Forecast::ExplainabilityInfo');
  has ForecastDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForecastFrequency => (is => 'ro', isa => 'Str');
  has ForecastHorizon => (is => 'ro', isa => 'Int');
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MonitorInfo => (is => 'ro', isa => 'Paws::Forecast::MonitorInfo');
  has OptimizationMetric => (is => 'ro', isa => 'Str');
  has PredictorArn => (is => 'ro', isa => 'Str');
  has PredictorName => (is => 'ro', isa => 'Str');
  has ReferencePredictorSummary => (is => 'ro', isa => 'Paws::Forecast::ReferencePredictorSummary');
  has Status => (is => 'ro', isa => 'Str');
  has TimeAlignmentBoundary => (is => 'ro', isa => 'Paws::Forecast::TimeAlignmentBoundary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeAutoPredictorResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The timestamp of the CreateAutoPredictor request.


=head2 DataConfig => L<Paws::Forecast::DataConfig>

The data configuration for your dataset group and any additional
datasets.


=head2 DatasetImportJobArns => ArrayRef[Str|Undef]

An array of the ARNs of the dataset import jobs used to import training
data for the predictor.


=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>




=head2 EstimatedTimeRemainingInMinutes => Int

The estimated time remaining in minutes for the predictor training job
to complete.


=head2 ExplainabilityInfo => L<Paws::Forecast::ExplainabilityInfo>

Provides the status and ARN of the Predictor Explainability.


=head2 ForecastDimensions => ArrayRef[Str|Undef]

An array of dimension (field) names that specify the attributes used to
group your time series.


=head2 ForecastFrequency => Str

The frequency of predictions in a forecast.

Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour),
30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5
minutes), and 1min (1 minute). For example, "Y" indicates every year
and "5min" indicates every five minutes.


=head2 ForecastHorizon => Int

The number of time-steps that the model predicts. The forecast horizon
is also called the prediction length.


=head2 ForecastTypes => ArrayRef[Str|Undef]

The forecast types used during predictor training. Default value is
["0.1","0.5","0.9"].


=head2 LastModificationTime => Str

The last time the resource was modified. The timestamp depends on the
status of the job:

=over

=item *

C<CREATE_PENDING> - The C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<CREATE_STOPPING> - The current timestamp.

=item *

C<CREATE_STOPPED> - When the job stopped.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

In the event of an error, a message detailing the cause of the error.


=head2 MonitorInfo => L<Paws::Forecast::MonitorInfo>

A object with the Amazon Resource Name (ARN) and status of the monitor
resource.


=head2 OptimizationMetric => Str

The accuracy metric used to optimize the predictor.

Valid values are: C<"WAPE">, C<"RMSE">, C<"AverageWeightedQuantileLoss">, C<"MASE">, C<"MAPE">
=head2 PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor


=head2 PredictorName => Str

The name of the predictor.


=head2 ReferencePredictorSummary => L<Paws::Forecast::ReferencePredictorSummary>

The ARN and state of the reference predictor. This parameter is only
valid for retrained or upgraded predictors.


=head2 Status => Str

The status of the predictor. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<CREATE_STOPPING>, C<CREATE_STOPPED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back



=head2 TimeAlignmentBoundary => L<Paws::Forecast::TimeAlignmentBoundary>

The time boundary Forecast uses when aggregating data.


=head2 _request_id => Str


=cut

1;