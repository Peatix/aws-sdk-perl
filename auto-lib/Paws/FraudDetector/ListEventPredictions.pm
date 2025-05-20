
package Paws::FraudDetector::ListEventPredictions;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Paws::FraudDetector::FilterCondition', traits => ['NameInRequest'], request_name => 'detectorId' );
  has DetectorVersionId => (is => 'ro', isa => 'Paws::FraudDetector::FilterCondition', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has EventId => (is => 'ro', isa => 'Paws::FraudDetector::FilterCondition', traits => ['NameInRequest'], request_name => 'eventId' );
  has EventType => (is => 'ro', isa => 'Paws::FraudDetector::FilterCondition', traits => ['NameInRequest'], request_name => 'eventType' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PredictionTimeRange => (is => 'ro', isa => 'Paws::FraudDetector::PredictionTimeRange', traits => ['NameInRequest'], request_name => 'predictionTimeRange' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventPredictions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::ListEventPredictionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ListEventPredictions - Arguments for method ListEventPredictions on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventPredictions on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method ListEventPredictions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventPredictions.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $ListEventPredictionsResult = $frauddetector->ListEventPredictions(
      DetectorId => {
        Value => 'MyfilterString',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      DetectorVersionId => {
        Value => 'MyfilterString',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      EventId => {
        Value => 'MyfilterString',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      EventType => {
        Value => 'MyfilterString',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      MaxResults          => 1,             # OPTIONAL
      NextToken           => 'Mystring',    # OPTIONAL
      PredictionTimeRange => {
        EndTime   => 'Mytime',              # min: 11, max: 30
        StartTime => 'Mytime',              # min: 11, max: 30

      },    # OPTIONAL
    );

    # Results:
    my $EventPredictionSummaries =
      $ListEventPredictionsResult->EventPredictionSummaries;
    my $NextToken = $ListEventPredictionsResult->NextToken;

    # Returns a L<Paws::FraudDetector::ListEventPredictionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/ListEventPredictions>

=head1 ATTRIBUTES


=head2 DetectorId => L<Paws::FraudDetector::FilterCondition>

The detector ID.



=head2 DetectorVersionId => L<Paws::FraudDetector::FilterCondition>

The detector version ID.



=head2 EventId => L<Paws::FraudDetector::FilterCondition>

The event ID.



=head2 EventType => L<Paws::FraudDetector::FilterCondition>

The event type associated with the detector.



=head2 MaxResults => Int

The maximum number of predictions to return for the request.



=head2 NextToken => Str

Identifies the next page of results to return. Use the token to make
the call again to retrieve the next page. Keep all other arguments
unchanged. Each pagination token expires after 24 hours.



=head2 PredictionTimeRange => L<Paws::FraudDetector::PredictionTimeRange>

The time period for when the predictions were generated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventPredictions in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

