
package Paws::AuditManager::ListControlDomainInsightsByAssessmentResponse;
  use Moose;
  has ControlDomainInsights => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ControlDomainInsights]', traits => ['NameInRequest'], request_name => 'controlDomainInsights');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListControlDomainInsightsByAssessmentResponse

=head1 ATTRIBUTES


=head2 ControlDomainInsights => ArrayRef[L<Paws::AuditManager::ControlDomainInsights>]

The control domain analytics data that the
C<ListControlDomainInsightsByAssessment> API returned.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

