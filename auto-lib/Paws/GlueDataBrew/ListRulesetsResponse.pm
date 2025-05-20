
package Paws::GlueDataBrew::ListRulesetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rulesets => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::RulesetItem]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListRulesetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 B<REQUIRED> Rulesets => ArrayRef[L<Paws::GlueDataBrew::RulesetItem>]

A list of RulesetItem. RulesetItem contains meta data of a ruleset.


=head2 _request_id => Str


=cut

