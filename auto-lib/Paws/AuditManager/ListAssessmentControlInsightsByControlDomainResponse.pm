
package Paws::AuditManager::ListAssessmentControlInsightsByControlDomainResponse;
  use Moose;
  has ControlInsightsByAssessment => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ControlInsightsMetadataByAssessmentItem]', traits => ['NameInRequest'], request_name => 'controlInsightsByAssessment');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentControlInsightsByControlDomainResponse

=head1 ATTRIBUTES


=head2 ControlInsightsByAssessment => ArrayRef[L<Paws::AuditManager::ControlInsightsMetadataByAssessmentItem>]

The assessment control analytics data that the
C<ListAssessmentControlInsightsByControlDomain> API returned.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

