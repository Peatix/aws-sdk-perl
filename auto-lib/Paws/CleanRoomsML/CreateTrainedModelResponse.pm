
package Paws::CleanRoomsML::CreateTrainedModelResponse;
  use Moose;
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateTrainedModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model.


=head2 _request_id => Str


=cut

