
package Paws::AccessAnalyzer::GetFindingRecommendationResponse;
  use Moose;
  has CompletedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completedAt');
  has Error => (is => 'ro', isa => 'Paws::AccessAnalyzer::RecommendationError', traits => ['NameInRequest'], request_name => 'error');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RecommendationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationType', required => 1);
  has RecommendedSteps => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::RecommendedStep]', traits => ['NameInRequest'], request_name => 'recommendedSteps');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFindingRecommendationResponse

=head1 ATTRIBUTES


=head2 CompletedAt => Str

The time at which the retrieval of the finding recommendation was
completed.


=head2 Error => L<Paws::AccessAnalyzer::RecommendationError>

Detailed information about the reason that the retrieval of a
recommendation for the finding failed.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 B<REQUIRED> RecommendationType => Str

The type of recommendation for the finding.

Valid values are: C<"UnusedPermissionRecommendation">
=head2 RecommendedSteps => ArrayRef[L<Paws::AccessAnalyzer::RecommendedStep>]

A group of recommended steps for the finding.


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource of the finding.


=head2 B<REQUIRED> StartedAt => Str

The time at which the retrieval of the finding recommendation was
started.


=head2 B<REQUIRED> Status => Str

The status of the retrieval of the finding recommendation.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"IN_PROGRESS">
=head2 _request_id => Str


=cut

