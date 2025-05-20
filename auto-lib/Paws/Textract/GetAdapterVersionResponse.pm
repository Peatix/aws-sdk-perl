
package Paws::Textract::GetAdapterVersionResponse;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');
  has AdapterVersion => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetConfig => (is => 'ro', isa => 'Paws::Textract::AdapterVersionDatasetConfig');
  has EvaluationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Textract::AdapterVersionEvaluationMetric]');
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::Textract::OutputConfig');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Textract::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetAdapterVersionResponse

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string containing a unique ID for the adapter version being
retrieved.


=head2 AdapterVersion => Str

A string containing the adapter version that has been retrieved.


=head2 CreationTime => Str

The time that the adapter version was created.


=head2 DatasetConfig => L<Paws::Textract::AdapterVersionDatasetConfig>

Specifies a dataset used to train a new adapter version. Takes a
ManifestS3Objec as the value.


=head2 EvaluationMetrics => ArrayRef[L<Paws::Textract::AdapterVersionEvaluationMetric>]

The evaluation metrics (F1 score, Precision, and Recall) for the
requested version, grouped by baseline metrics and adapter version.


=head2 FeatureTypes => ArrayRef[Str|Undef]

List of the targeted feature types for the requested adapter version.


=head2 KMSKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
Used to encrypt your documents.


=head2 OutputConfig => L<Paws::Textract::OutputConfig>




=head2 Status => Str

The status of the adapter version that has been requested.

Valid values are: C<"ACTIVE">, C<"AT_RISK">, C<"DEPRECATED">, C<"CREATION_ERROR">, C<"CREATION_IN_PROGRESS">
=head2 StatusMessage => Str

A message that describes the status of the requested adapter version.


=head2 Tags => L<Paws::Textract::TagMap>

A set of tags (key-value pairs) that are associated with the adapter
version.


=head2 _request_id => Str


=cut

1;