
package Paws::Glue::ListDataQualityRulesetEvaluationRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Runs => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityRulesetEvaluationRunDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityRulesetEvaluationRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 Runs => ArrayRef[L<Paws::Glue::DataQualityRulesetEvaluationRunDescription>]

A list of C<DataQualityRulesetEvaluationRunDescription> objects
representing data quality ruleset runs.


=head2 _request_id => Str


=cut

1;