
package Paws::Forecast::GetAccuracyMetricsResponse;
  use Moose;
  has AutoMLOverrideStrategy => (is => 'ro', isa => 'Str');
  has IsAutoPredictor => (is => 'ro', isa => 'Bool');
  has OptimizationMetric => (is => 'ro', isa => 'Str');
  has PredictorEvaluationResults => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::EvaluationResult]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::GetAccuracyMetricsResponse

=head1 ATTRIBUTES


=head2 AutoMLOverrideStrategy => Str

The C<LatencyOptimized> AutoML override strategy is only available in
private beta. Contact Amazon Web Services Support or your account
manager to learn more about access privileges.

The AutoML strategy used to train the predictor. Unless
C<LatencyOptimized> is specified, the AutoML strategy optimizes
predictor accuracy.

This parameter is only valid for predictors trained using AutoML.

Valid values are: C<"LatencyOptimized">, C<"AccuracyOptimized">
=head2 IsAutoPredictor => Bool

Whether the predictor was created with CreateAutoPredictor.


=head2 OptimizationMetric => Str

The accuracy metric used to optimize the predictor.

Valid values are: C<"WAPE">, C<"RMSE">, C<"AverageWeightedQuantileLoss">, C<"MASE">, C<"MAPE">
=head2 PredictorEvaluationResults => ArrayRef[L<Paws::Forecast::EvaluationResult>]

An array of results from evaluating the predictor.


=head2 _request_id => Str


=cut

1;