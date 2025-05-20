
package Paws::Glue::GetDataQualityRulesetResponse;
  use Moose;
  has CreatedOn => (is => 'ro', isa => 'Str');
  has DataQualitySecurityConfiguration => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RecommendationRunId => (is => 'ro', isa => 'Str');
  has Ruleset => (is => 'ro', isa => 'Str');
  has TargetTable => (is => 'ro', isa => 'Paws::Glue::DataQualityTargetTable');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityRulesetResponse

=head1 ATTRIBUTES


=head2 CreatedOn => Str

A timestamp. The time and date that this data quality ruleset was
created.


=head2 DataQualitySecurityConfiguration => Str

The name of the security configuration created with the data quality
encryption option.


=head2 Description => Str

A description of the ruleset.


=head2 LastModifiedOn => Str

A timestamp. The last point in time when this data quality ruleset was
modified.


=head2 Name => Str

The name of the ruleset.


=head2 RecommendationRunId => Str

When a ruleset was created from a recommendation run, this run ID is
generated to link the two together.


=head2 Ruleset => Str

A Data Quality Definition Language (DQDL) ruleset. For more
information, see the Glue developer guide.


=head2 TargetTable => L<Paws::Glue::DataQualityTargetTable>

The name and database name of the target table.


=head2 _request_id => Str


=cut

1;