
package Paws::Glue::GetDataQualityResultResponse;
  use Moose;
  has AnalyzerResults => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityAnalyzerResult]');
  has CompletedOn => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource');
  has EvaluationContext => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobRunId => (is => 'ro', isa => 'Str');
  has Observations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityObservation]');
  has ProfileId => (is => 'ro', isa => 'Str');
  has ResultId => (is => 'ro', isa => 'Str');
  has RuleResults => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityRuleResult]');
  has RulesetEvaluationRunId => (is => 'ro', isa => 'Str');
  has RulesetName => (is => 'ro', isa => 'Str');
  has Score => (is => 'ro', isa => 'Num');
  has StartedOn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityResultResponse

=head1 ATTRIBUTES


=head2 AnalyzerResults => ArrayRef[L<Paws::Glue::DataQualityAnalyzerResult>]

A list of C<DataQualityAnalyzerResult> objects representing the results
for each analyzer.


=head2 CompletedOn => Str

The date and time when the run for this data quality result was
completed.


=head2 DataSource => L<Paws::Glue::DataSource>

The table associated with the data quality result, if any.


=head2 EvaluationContext => Str

In the context of a job in Glue Studio, each node in the canvas is
typically assigned some sort of name and data quality nodes will have
names. In the case of multiple nodes, the C<evaluationContext> can
differentiate the nodes.


=head2 JobName => Str

The job name associated with the data quality result, if any.


=head2 JobRunId => Str

The job run ID associated with the data quality result, if any.


=head2 Observations => ArrayRef[L<Paws::Glue::DataQualityObservation>]

A list of C<DataQualityObservation> objects representing the
observations generated after evaluating the rules and analyzers.


=head2 ProfileId => Str

The Profile ID for the data quality result.


=head2 ResultId => Str

A unique result ID for the data quality result.


=head2 RuleResults => ArrayRef[L<Paws::Glue::DataQualityRuleResult>]

A list of C<DataQualityRuleResult> objects representing the results for
each rule.


=head2 RulesetEvaluationRunId => Str

The unique run ID associated with the ruleset evaluation.


=head2 RulesetName => Str

The name of the ruleset associated with the data quality result.


=head2 Score => Num

An aggregate data quality score. Represents the ratio of rules that
passed to the total number of rules.


=head2 StartedOn => Str

The date and time when the run for this data quality result started.


=head2 _request_id => Str


=cut

1;