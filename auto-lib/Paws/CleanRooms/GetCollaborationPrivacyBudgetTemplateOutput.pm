
package Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplateOutput;
  use Moose;
  has CollaborationPrivacyBudgetTemplate => (is => 'ro', isa => 'Paws::CleanRooms::CollaborationPrivacyBudgetTemplate', traits => ['NameInRequest'], request_name => 'collaborationPrivacyBudgetTemplate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationPrivacyBudgetTemplate => L<Paws::CleanRooms::CollaborationPrivacyBudgetTemplate>

Returns the details of the privacy budget template that you requested.


=head2 _request_id => Str


=cut

