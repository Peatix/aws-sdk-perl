
package Paws::MigrationHubStrategy::StartRecommendationReportGenerationResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StartRecommendationReportGenerationResponse

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the recommendation report generation task.


=head2 _request_id => Str


=cut

