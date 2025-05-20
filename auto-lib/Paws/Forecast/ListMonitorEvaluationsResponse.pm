
package Paws::Forecast::ListMonitorEvaluationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PredictorMonitorEvaluations => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::PredictorMonitorEvaluation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListMonitorEvaluationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.
Tokens expire after 24 hours.


=head2 PredictorMonitorEvaluations => ArrayRef[L<Paws::Forecast::PredictorMonitorEvaluation>]

The monitoring results and predictor events collected by the monitor
resource during different windows of time.

For information about monitoring see Viewing Monitoring Results
(https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).
For more information about retrieving monitoring results see Viewing
Monitoring Results
(https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).


=head2 _request_id => Str


=cut

1;