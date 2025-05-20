
package Paws::Glue::GetDataQualityRulesetEvaluationRunResponse;
  use Moose;
  has AdditionalDataSources => (is => 'ro', isa => 'Paws::Glue::DataSourceMap');
  has AdditionalRunOptions => (is => 'ro', isa => 'Paws::Glue::DataQualityEvaluationRunAdditionalRunOptions');
  has CompletedOn => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource');
  has ErrorString => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has ResultIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Role => (is => 'ro', isa => 'Str');
  has RulesetNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RunId => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityRulesetEvaluationRunResponse

=head1 ATTRIBUTES


=head2 AdditionalDataSources => L<Paws::Glue::DataSourceMap>

A map of reference strings to additional data sources you can specify
for an evaluation run.


=head2 AdditionalRunOptions => L<Paws::Glue::DataQualityEvaluationRunAdditionalRunOptions>

Additional run options you can specify for an evaluation run.


=head2 CompletedOn => Str

The date and time when this run was completed.


=head2 DataSource => L<Paws::Glue::DataSource>

The data source (an Glue table) associated with this evaluation run.


=head2 ErrorString => Str

The error strings that are associated with the run.


=head2 ExecutionTime => Int

The amount of time (in seconds) that the run consumed resources.


=head2 LastModifiedOn => Str

A timestamp. The last point in time when this data quality rule
recommendation run was modified.


=head2 NumberOfWorkers => Int

The number of C<G.1X> workers to be used in the run. The default is 5.


=head2 ResultIds => ArrayRef[Str|Undef]

A list of result IDs for the data quality results for the run.


=head2 Role => Str

An IAM role supplied to encrypt the results of the run.


=head2 RulesetNames => ArrayRef[Str|Undef]

A list of ruleset names for the run. Currently, this parameter takes
only one Ruleset name.


=head2 RunId => Str

The unique run identifier associated with this run.


=head2 StartedOn => Str

The date and time when this run started.


=head2 Status => Str

The status for this run.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMEOUT">
=head2 Timeout => Int

The timeout for a run in minutes. This is the maximum time that a run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours).


=head2 _request_id => Str


=cut

1;