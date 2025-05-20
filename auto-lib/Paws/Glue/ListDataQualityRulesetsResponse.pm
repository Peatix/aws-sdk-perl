
package Paws::Glue::ListDataQualityRulesetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rulesets => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityRulesetListDetails]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityRulesetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 Rulesets => ArrayRef[L<Paws::Glue::DataQualityRulesetListDetails>]

A paginated list of rulesets for the specified list of Glue tables.


=head2 _request_id => Str


=cut

1;