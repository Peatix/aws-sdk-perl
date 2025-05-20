
package Paws::Neptunedata::GetMLModelTransformJobOutput;
  use Moose;
  has BaseProcessingJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'baseProcessingJob');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::Neptunedata::MlConfigDefinition]', traits => ['NameInRequest'], request_name => 'models');
  has RemoteModelTransformJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'remoteModelTransformJob');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetMLModelTransformJobOutput

=head1 ATTRIBUTES


=head2 BaseProcessingJob => L<Paws::Neptunedata::MlResourceDefinition>

The base data processing job.


=head2 Id => Str

The unique identifier of the model-transform job to be retrieved.


=head2 Models => ArrayRef[L<Paws::Neptunedata::MlConfigDefinition>]

A list of the configuration information for the models being used.


=head2 RemoteModelTransformJob => L<Paws::Neptunedata::MlResourceDefinition>

The remote model transform job.


=head2 Status => Str

The status of the model-transform job.


=head2 _request_id => Str


=cut

