
package Paws::Resiliencehub::ListAppAssessmentsResponse;
  use Moose;
  has AssessmentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppAssessmentSummary]', traits => ['NameInRequest'], request_name => 'assessmentSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppAssessmentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentSummaries => ArrayRef[L<Paws::Resiliencehub::AppAssessmentSummary>]

The summaries for the specified assessments, returned as an object.
This object includes application versions, associated Amazon Resource
Numbers (ARNs), cost, messages, resiliency scores, and more.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

