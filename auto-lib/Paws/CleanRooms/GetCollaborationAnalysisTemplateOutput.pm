
package Paws::CleanRooms::GetCollaborationAnalysisTemplateOutput;
  use Moose;
  has CollaborationAnalysisTemplate => (is => 'ro', isa => 'Paws::CleanRooms::CollaborationAnalysisTemplate', traits => ['NameInRequest'], request_name => 'collaborationAnalysisTemplate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationAnalysisTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationAnalysisTemplate => L<Paws::CleanRooms::CollaborationAnalysisTemplate>

The analysis template within a collaboration.


=head2 _request_id => Str


=cut

