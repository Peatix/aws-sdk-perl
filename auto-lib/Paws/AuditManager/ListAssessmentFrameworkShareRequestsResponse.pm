
package Paws::AuditManager::ListAssessmentFrameworkShareRequestsResponse;
  use Moose;
  has AssessmentFrameworkShareRequests => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentFrameworkShareRequest]', traits => ['NameInRequest'], request_name => 'assessmentFrameworkShareRequests');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentFrameworkShareRequestsResponse

=head1 ATTRIBUTES


=head2 AssessmentFrameworkShareRequests => ArrayRef[L<Paws::AuditManager::AssessmentFrameworkShareRequest>]

The list of share requests that the
C<ListAssessmentFrameworkShareRequests> API returned.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

