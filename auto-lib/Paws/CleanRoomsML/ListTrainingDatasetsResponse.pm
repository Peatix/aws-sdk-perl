
package Paws::CleanRoomsML::ListTrainingDatasetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrainingDatasets => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::TrainingDatasetSummary]', traits => ['NameInRequest'], request_name => 'trainingDatasets', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListTrainingDatasetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 B<REQUIRED> TrainingDatasets => ArrayRef[L<Paws::CleanRoomsML::TrainingDatasetSummary>]

The training datasets that match the request.


=head2 _request_id => Str


=cut

