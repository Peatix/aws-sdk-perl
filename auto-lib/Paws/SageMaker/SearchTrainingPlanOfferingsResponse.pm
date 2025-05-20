
package Paws::SageMaker::SearchTrainingPlanOfferingsResponse;
  use Moose;
  has TrainingPlanOfferings => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrainingPlanOffering]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchTrainingPlanOfferingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingPlanOfferings => ArrayRef[L<Paws::SageMaker::TrainingPlanOffering>]

A list of training plan offerings that match the search criteria.


=head2 _request_id => Str


=cut

1;