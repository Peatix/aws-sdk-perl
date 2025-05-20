
package Paws::CodePipeline::ListRuleExecutionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RuleExecutionDetails => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::RuleExecutionDetail]', traits => ['NameInRequest'], request_name => 'ruleExecutionDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListRuleExecutionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used in the next C<ListRuleExecutions> call. To
view all items in the list, continue to call this operation with each
subsequent token until no more nextToken values are returned.


=head2 RuleExecutionDetails => ArrayRef[L<Paws::CodePipeline::RuleExecutionDetail>]

Details about the output for listing rule executions.


=head2 _request_id => Str


=cut

1;