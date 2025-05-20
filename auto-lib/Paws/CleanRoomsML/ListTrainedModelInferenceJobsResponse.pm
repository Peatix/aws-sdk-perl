
package Paws::CleanRoomsML::ListTrainedModelInferenceJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrainedModelInferenceJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::TrainedModelInferenceJobSummary]', traits => ['NameInRequest'], request_name => 'trainedModelInferenceJobs', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListTrainedModelInferenceJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 B<REQUIRED> TrainedModelInferenceJobs => ArrayRef[L<Paws::CleanRoomsML::TrainedModelInferenceJobSummary>]

Returns the requested trained model inference jobs.


=head2 _request_id => Str


=cut

