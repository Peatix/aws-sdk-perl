
package Paws::MigrationHubStrategy::StartAssessmentResponse;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StartAssessmentResponse

=head1 ATTRIBUTES


=head2 AssessmentId => Str

The ID of the assessment.


=head2 _request_id => Str


=cut

