
package Paws::Glue::UpdateDataQualityRulesetResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Ruleset => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateDataQualityRulesetResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the ruleset.


=head2 Name => Str

The name of the data quality ruleset.


=head2 Ruleset => Str

A Data Quality Definition Language (DQDL) ruleset. For more
information, see the Glue developer guide.


=head2 _request_id => Str


=cut

1;