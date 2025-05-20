
package Paws::Glue::StartDataQualityRuleRecommendationRunResponse;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartDataQualityRuleRecommendationRunResponse

=head1 ATTRIBUTES


=head2 RunId => Str

The unique run identifier associated with this run.


=head2 _request_id => Str


=cut

1;