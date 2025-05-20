
package Paws::CleanRoomsML::CreateTrainingDatasetResponse;
  use Moose;
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDatasetArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateTrainingDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset resource.


=head2 _request_id => Str


=cut

