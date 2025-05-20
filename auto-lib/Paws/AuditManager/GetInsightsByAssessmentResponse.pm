
package Paws::AuditManager::GetInsightsByAssessmentResponse;
  use Moose;
  has Insights => (is => 'ro', isa => 'Paws::AuditManager::InsightsByAssessment', traits => ['NameInRequest'], request_name => 'insights');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetInsightsByAssessmentResponse

=head1 ATTRIBUTES


=head2 Insights => L<Paws::AuditManager::InsightsByAssessment>

The assessment analytics data that the C<GetInsightsByAssessment> API
returned.


=head2 _request_id => Str


=cut

