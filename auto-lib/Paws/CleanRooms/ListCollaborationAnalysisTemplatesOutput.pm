
package Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput;
  use Moose;
  has CollaborationAnalysisTemplateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationAnalysisTemplateSummary]', traits => ['NameInRequest'], request_name => 'collaborationAnalysisTemplateSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationAnalysisTemplateSummaries => ArrayRef[L<Paws::CleanRooms::CollaborationAnalysisTemplateSummary>]

The metadata of the analysis template within a collaboration.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

