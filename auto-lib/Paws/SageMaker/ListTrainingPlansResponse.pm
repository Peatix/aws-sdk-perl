
package Paws::SageMaker::ListTrainingPlansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrainingPlanSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrainingPlanSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to continue pagination if more results are available.


=head2 B<REQUIRED> TrainingPlanSummaries => ArrayRef[L<Paws::SageMaker::TrainingPlanSummary>]

A list of summary information for the training plans.


=head2 _request_id => Str


=cut

1;