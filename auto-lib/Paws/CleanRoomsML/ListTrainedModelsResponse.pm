
package Paws::CleanRoomsML::ListTrainedModelsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrainedModels => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::TrainedModelSummary]', traits => ['NameInRequest'], request_name => 'trainedModels', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListTrainedModelsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 B<REQUIRED> TrainedModels => ArrayRef[L<Paws::CleanRoomsML::TrainedModelSummary>]

The list of trained models.


=head2 _request_id => Str


=cut

