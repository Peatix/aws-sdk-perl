
package Paws::CleanRooms::BatchGetCollaborationAnalysisTemplateOutput;
  use Moose;
  has CollaborationAnalysisTemplates => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationAnalysisTemplate]', traits => ['NameInRequest'], request_name => 'collaborationAnalysisTemplates', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::BatchGetCollaborationAnalysisTemplateError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::BatchGetCollaborationAnalysisTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationAnalysisTemplates => ArrayRef[L<Paws::CleanRooms::CollaborationAnalysisTemplate>]

The retrieved list of analysis templates within a collaboration.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::CleanRooms::BatchGetCollaborationAnalysisTemplateError>]

Error reasons for collaboration analysis templates that could not be
retrieved. One error is returned for every collaboration analysis
template that could not be retrieved.


=head2 _request_id => Str


=cut

