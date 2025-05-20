
package Paws::SageMaker::CreateTrainingPlanResponse;
  use Moose;
  has TrainingPlanArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrainingPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingPlanArn => Str

The Amazon Resource Name (ARN); of the created training plan.


=head2 _request_id => Str


=cut

1;