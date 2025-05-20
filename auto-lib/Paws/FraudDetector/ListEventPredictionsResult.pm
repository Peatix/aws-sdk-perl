
package Paws::FraudDetector::ListEventPredictionsResult;
  use Moose;
  has EventPredictionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EventPredictionSummary]', traits => ['NameInRequest'], request_name => 'eventPredictionSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ListEventPredictionsResult

=head1 ATTRIBUTES


=head2 EventPredictionSummaries => ArrayRef[L<Paws::FraudDetector::EventPredictionSummary>]

The summary of the past predictions.


=head2 NextToken => Str

Identifies the next page of results to return. Use the token to make
the call again to retrieve the next page. Keep all other arguments
unchanged. Each pagination token expires after 24 hours.


=head2 _request_id => Str


=cut

1;