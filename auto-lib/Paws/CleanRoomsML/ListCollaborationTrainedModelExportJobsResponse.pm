
package Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobsResponse;
  use Moose;
  has CollaborationTrainedModelExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::CollaborationTrainedModelExportJobSummary]', traits => ['NameInRequest'], request_name => 'collaborationTrainedModelExportJobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationTrainedModelExportJobs => ArrayRef[L<Paws::CleanRoomsML::CollaborationTrainedModelExportJobSummary>]

The exports jobs that exist for the requested trained model in the
requested collaboration.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

