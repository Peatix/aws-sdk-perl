
package Paws::MigrationHubStrategy::GetRecommendationReportDetailsResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has RecommendationReportDetails => (is => 'ro', isa => 'Paws::MigrationHubStrategy::RecommendationReportDetails', traits => ['NameInRequest'], request_name => 'recommendationReportDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetRecommendationReportDetailsResponse

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the recommendation report generation task. See the response
of StartRecommendationReportGeneration.


=head2 RecommendationReportDetails => L<Paws::MigrationHubStrategy::RecommendationReportDetails>

Detailed information about the recommendation report.


=head2 _request_id => Str


=cut

