
package Paws::Glue::GetDataQualityRuleRecommendationRunResponse;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has CreatedRulesetName => (is => 'ro', isa => 'Str');
  has DataQualitySecurityConfiguration => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource');
  has ErrorString => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has RecommendedRuleset => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has RunId => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityRuleRecommendationRunResponse

=head1 ATTRIBUTES


=head2 CompletedOn => Str

The date and time when this run was completed.


=head2 CreatedRulesetName => Str

The name of the ruleset that was created by the run.


=head2 DataQualitySecurityConfiguration => Str

The name of the security configuration created with the data quality
encryption option.


=head2 DataSource => L<Paws::Glue::DataSource>

The data source (an Glue table) associated with this run.


=head2 ErrorString => Str

The error strings that are associated with the run.


=head2 ExecutionTime => Int

The amount of time (in seconds) that the run consumed resources.


=head2 LastModifiedOn => Str

A timestamp. The last point in time when this data quality rule
recommendation run was modified.


=head2 NumberOfWorkers => Int

The number of C<G.1X> workers to be used in the run. The default is 5.


=head2 RecommendedRuleset => Str

When a start rule recommendation run completes, it creates a
recommended ruleset (a set of rules). This member has those rules in
Data Quality Definition Language (DQDL) format.


=head2 Role => Str

An IAM role supplied to encrypt the results of the run.


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