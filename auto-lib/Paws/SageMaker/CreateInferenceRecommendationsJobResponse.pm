
package Paws::SageMaker::CreateInferenceRecommendationsJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateInferenceRecommendationsJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the recommendation job.


=head2 _request_id => Str


=cut

1;