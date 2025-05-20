
package Paws::AuditManager::StartAssessmentFrameworkShareResponse;
  use Moose;
  has AssessmentFrameworkShareRequest => (is => 'ro', isa => 'Paws::AuditManager::AssessmentFrameworkShareRequest', traits => ['NameInRequest'], request_name => 'assessmentFrameworkShareRequest');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::StartAssessmentFrameworkShareResponse

=head1 ATTRIBUTES


=head2 AssessmentFrameworkShareRequest => L<Paws::AuditManager::AssessmentFrameworkShareRequest>

The share request that's created by the
C<StartAssessmentFrameworkShare> API.


=head2 _request_id => Str


=cut

