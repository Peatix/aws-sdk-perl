
package Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobsResponse;
  use Moose;
  has CollaborationTrainedModelInferenceJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::CollaborationTrainedModelInferenceJobSummary]', traits => ['NameInRequest'], request_name => 'collaborationTrainedModelInferenceJobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationTrainedModelInferenceJobs => ArrayRef[L<Paws::CleanRoomsML::CollaborationTrainedModelInferenceJobSummary>]

The trained model inference jobs that you are interested in.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

