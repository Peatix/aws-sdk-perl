
package Paws::LookoutEquipment::CreateInferenceSchedulerResponse;
  use Moose;
  has InferenceSchedulerArn => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str');
  has ModelQuality => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateInferenceSchedulerResponse

=head1 ATTRIBUTES


=head2 InferenceSchedulerArn => Str

The Amazon Resource Name (ARN) of the inference scheduler being
created.


=head2 InferenceSchedulerName => Str

The name of inference scheduler being created.


=head2 ModelQuality => Str

Provides a quality assessment for a model that uses labels. If Lookout
for Equipment determines that the model quality is poor based on
training metrics, the value is C<POOR_QUALITY_DETECTED>. Otherwise, the
value is C<QUALITY_THRESHOLD_MET>.

If the model is unlabeled, the model quality can't be assessed and the
value of C<ModelQuality> is C<CANNOT_DETERMINE_QUALITY>. In this
situation, you can get a model quality assessment by adding labels to
the input dataset and retraining the model.

For information about using labels with your models, see Understanding
labeling
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html).

For information about improving the quality of a model, see Best
practices with Amazon Lookout for Equipment
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html).

Valid values are: C<"QUALITY_THRESHOLD_MET">, C<"CANNOT_DETERMINE_QUALITY">, C<"POOR_QUALITY_DETECTED">
=head2 Status => Str

Indicates the status of the C<CreateInferenceScheduler> operation.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;