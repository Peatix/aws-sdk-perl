
package Paws::CodePipeline::ListDeployActionExecutionTargetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::DeployActionExecutionTarget]', traits => ['NameInRequest'], request_name => 'targets' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListDeployActionExecutionTargetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous list action types
call, which can be used to return the next set of action types in the
list.


=head2 Targets => ArrayRef[L<Paws::CodePipeline::DeployActionExecutionTarget>]

The targets for the deploy action.


=head2 _request_id => Str


=cut

1;