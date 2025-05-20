
package Paws::Neptunedata::GetMLModelTrainingJobOutput;
  use Moose;
  has HpoJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'hpoJob');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MlModels => (is => 'ro', isa => 'ArrayRef[Paws::Neptunedata::MlConfigDefinition]', traits => ['NameInRequest'], request_name => 'mlModels');
  has ModelTransformJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'modelTransformJob');
  has ProcessingJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'processingJob');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetMLModelTrainingJobOutput

=head1 ATTRIBUTES


=head2 HpoJob => L<Paws::Neptunedata::MlResourceDefinition>

The HPO job.


=head2 Id => Str

The unique identifier of this model-training job.


=head2 MlModels => ArrayRef[L<Paws::Neptunedata::MlConfigDefinition>]

A list of the configurations of the ML models being used.


=head2 ModelTransformJob => L<Paws::Neptunedata::MlResourceDefinition>

The model transform job.


=head2 ProcessingJob => L<Paws::Neptunedata::MlResourceDefinition>

The data processing job.


=head2 Status => Str

The status of the model training job.


=head2 _request_id => Str


=cut

