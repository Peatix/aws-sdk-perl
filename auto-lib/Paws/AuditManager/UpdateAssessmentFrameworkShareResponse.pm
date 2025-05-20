
package Paws::AuditManager::UpdateAssessmentFrameworkShareResponse;
  use Moose;
  has AssessmentFrameworkShareRequest => (is => 'ro', isa => 'Paws::AuditManager::AssessmentFrameworkShareRequest', traits => ['NameInRequest'], request_name => 'assessmentFrameworkShareRequest');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentFrameworkShareResponse

=head1 ATTRIBUTES


=head2 AssessmentFrameworkShareRequest => L<Paws::AuditManager::AssessmentFrameworkShareRequest>

The updated share request that's returned by the
C<UpdateAssessmentFrameworkShare> operation.


=head2 _request_id => Str


=cut

