
package Paws::CleanRoomsML::StartTrainedModelInferenceJobResponse;
  use Moose;
  has TrainedModelInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelInferenceJobArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartTrainedModelInferenceJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainedModelInferenceJobArn => Str

The Amazon Resource Name (ARN) of the trained model inference job.


=head2 _request_id => Str


=cut

