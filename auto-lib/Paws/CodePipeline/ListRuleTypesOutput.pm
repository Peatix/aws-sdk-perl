
package Paws::CodePipeline::ListRuleTypesOutput;
  use Moose;
  has RuleTypes => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::RuleType]', traits => ['NameInRequest'], request_name => 'ruleTypes' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListRuleTypesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleTypes => ArrayRef[L<Paws::CodePipeline::RuleType>]

Lists the rules that are configured for the condition.


=head2 _request_id => Str


=cut

1;