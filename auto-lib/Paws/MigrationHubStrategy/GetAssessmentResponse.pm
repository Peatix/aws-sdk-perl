
package Paws::MigrationHubStrategy::GetAssessmentResponse;
  use Moose;
  has AssessmentTargets => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::AssessmentTarget]', traits => ['NameInRequest'], request_name => 'assessmentTargets');
  has DataCollectionDetails => (is => 'ro', isa => 'Paws::MigrationHubStrategy::DataCollectionDetails', traits => ['NameInRequest'], request_name => 'dataCollectionDetails');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetAssessmentResponse

=head1 ATTRIBUTES


=head2 AssessmentTargets => ArrayRef[L<Paws::MigrationHubStrategy::AssessmentTarget>]

List of criteria for assessment.


=head2 DataCollectionDetails => L<Paws::MigrationHubStrategy::DataCollectionDetails>

Detailed information about the assessment.


=head2 Id => Str

The ID for the specific assessment task.


=head2 _request_id => Str


=cut

