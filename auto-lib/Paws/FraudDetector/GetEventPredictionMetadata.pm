
package Paws::FraudDetector::GetEventPredictionMetadata;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' , required => 1);
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has PredictionTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'predictionTimestamp' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventPredictionMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetEventPredictionMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventPredictionMetadata - Arguments for method GetEventPredictionMetadata on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventPredictionMetadata on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetEventPredictionMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventPredictionMetadata.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetEventPredictionMetadataResult =
      $frauddetector->GetEventPredictionMetadata(
      DetectorId          => 'Myidentifier',
      DetectorVersionId   => 'MywholeNumberVersionString',
      EventId             => 'Myidentifier',
      EventTypeName       => 'Myidentifier',
      PredictionTimestamp => 'Mytime',

      );

    # Results:
    my $DetectorId = $GetEventPredictionMetadataResult->DetectorId;
    my $DetectorVersionId =
      $GetEventPredictionMetadataResult->DetectorVersionId;
    my $DetectorVersionStatus =
      $GetEventPredictionMetadataResult->DetectorVersionStatus;
    my $EntityId   = $GetEventPredictionMetadataResult->EntityId;
    my $EntityType = $GetEventPredictionMetadataResult->EntityType;
    my $EvaluatedExternalModels =
      $GetEventPredictionMetadataResult->EvaluatedExternalModels;
    my $EvaluatedModelVersions =
      $GetEventPredictionMetadataResult->EvaluatedModelVersions;
    my $EventId        = $GetEventPredictionMetadataResult->EventId;
    my $EventTimestamp = $GetEventPredictionMetadataResult->EventTimestamp;
    my $EventTypeName  = $GetEventPredictionMetadataResult->EventTypeName;
    my $EventVariables = $GetEventPredictionMetadataResult->EventVariables;
    my $Outcomes       = $GetEventPredictionMetadataResult->Outcomes;
    my $PredictionTimestamp =
      $GetEventPredictionMetadataResult->PredictionTimestamp;
    my $RuleExecutionMode =
      $GetEventPredictionMetadataResult->RuleExecutionMode;
    my $Rules = $GetEventPredictionMetadataResult->Rules;

    # Returns a L<Paws::FraudDetector::GetEventPredictionMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetEventPredictionMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 B<REQUIRED> DetectorVersionId => Str

The detector version ID.



=head2 B<REQUIRED> EventId => Str

The event ID.



=head2 B<REQUIRED> EventTypeName => Str

The event type associated with the detector specified for the
prediction.



=head2 B<REQUIRED> PredictionTimestamp => Str

The timestamp that defines when the prediction was generated. The
timestamp must be specified using ISO 8601 standard in UTC.

We recommend calling ListEventPredictions
(https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html)
first, and using the C<predictionTimestamp> value in the response to
provide an accurate prediction timestamp value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventPredictionMetadata in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

