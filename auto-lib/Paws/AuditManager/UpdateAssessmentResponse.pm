
package Paws::AuditManager::UpdateAssessmentResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::AuditManager::Assessment', traits => ['NameInRequest'], request_name => 'assessment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentResponse

=head1 ATTRIBUTES


=head2 Assessment => L<Paws::AuditManager::Assessment>

The response object for the C<UpdateAssessment> API. This is the name
of the updated assessment.


=head2 _request_id => Str


=cut

