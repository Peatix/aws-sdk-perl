
package Paws::Neptunedata::ListMLModelTrainingJobsOutput;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListMLModelTrainingJobsOutput

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

A page of the list of model training job IDs.


=head2 _request_id => Str


=cut

