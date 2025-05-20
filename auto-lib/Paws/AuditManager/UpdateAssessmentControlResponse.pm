
package Paws::AuditManager::UpdateAssessmentControlResponse;
  use Moose;
  has Control => (is => 'ro', isa => 'Paws::AuditManager::AssessmentControl', traits => ['NameInRequest'], request_name => 'control');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentControlResponse

=head1 ATTRIBUTES


=head2 Control => L<Paws::AuditManager::AssessmentControl>

The name of the updated control set that the C<UpdateAssessmentControl>
API returned.


=head2 _request_id => Str


=cut

