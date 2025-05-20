
package Paws::FraudDetector::GetEventPredictionMetadataResult;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' );
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has DetectorVersionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionStatus' );
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId' );
  has EntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityType' );
  has EvaluatedExternalModels => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EvaluatedExternalModel]', traits => ['NameInRequest'], request_name => 'evaluatedExternalModels' );
  has EvaluatedModelVersions => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EvaluatedModelVersion]', traits => ['NameInRequest'], request_name => 'evaluatedModelVersions' );
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' );
  has EventTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTimestamp' );
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' );
  has EventVariables => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EventVariableSummary]', traits => ['NameInRequest'], request_name => 'eventVariables' );
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'outcomes' );
  has PredictionTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'predictionTimestamp' );
  has RuleExecutionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleExecutionMode' );
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EvaluatedRule]', traits => ['NameInRequest'], request_name => 'rules' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventPredictionMetadataResult

=head1 ATTRIBUTES


=head2 DetectorId => Str

The detector ID.


=head2 DetectorVersionId => Str

The detector version ID.


=head2 DetectorVersionStatus => Str

The status of the detector version.


=head2 EntityId => Str

The entity ID.


=head2 EntityType => Str

The entity type.


=head2 EvaluatedExternalModels => ArrayRef[L<Paws::FraudDetector::EvaluatedExternalModel>]

External (Amazon SageMaker) models that were evaluated for generating
predictions.


=head2 EvaluatedModelVersions => ArrayRef[L<Paws::FraudDetector::EvaluatedModelVersion>]

Model versions that were evaluated for generating predictions.


=head2 EventId => Str

The event ID.


=head2 EventTimestamp => Str

The timestamp for when the prediction was generated for the associated
event ID.


=head2 EventTypeName => Str

The event type associated with the detector specified for this
prediction.


=head2 EventVariables => ArrayRef[L<Paws::FraudDetector::EventVariableSummary>]

A list of event variables that influenced the prediction scores.


=head2 Outcomes => ArrayRef[Str|Undef]

The outcomes of the matched rule, based on the rule execution mode.


=head2 PredictionTimestamp => Str

The timestamp that defines when the prediction was generated.


=head2 RuleExecutionMode => Str

The execution mode of the rule used for evaluating variable values.

Valid values are: C<"ALL_MATCHED">, C<"FIRST_MATCHED">
=head2 Rules => ArrayRef[L<Paws::FraudDetector::EvaluatedRule>]

List of rules associated with the detector version that were used for
evaluating variable values.


=head2 _request_id => Str


=cut

1;