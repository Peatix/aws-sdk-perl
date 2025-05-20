
package Paws::Neptunedata::GetMLDataProcessingJobOutput;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ProcessingJob => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'processingJob');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetMLDataProcessingJobOutput

=head1 ATTRIBUTES


=head2 Id => Str

The unique identifier of this data-processing job.


=head2 ProcessingJob => L<Paws::Neptunedata::MlResourceDefinition>

Definition of the data processing job.


=head2 Status => Str

Status of the data processing job.


=head2 _request_id => Str


=cut

