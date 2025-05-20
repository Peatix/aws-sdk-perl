
package Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse;
  use Moose;
  has CollaborationTrainedModels => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::CollaborationTrainedModelSummary]', traits => ['NameInRequest'], request_name => 'collaborationTrainedModels', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationTrainedModels => ArrayRef[L<Paws::CleanRoomsML::CollaborationTrainedModelSummary>]

The trained models in the collaboration that you requested.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

