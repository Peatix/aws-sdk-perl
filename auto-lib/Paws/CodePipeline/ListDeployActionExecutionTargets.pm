
package Paws::CodePipeline::ListDeployActionExecutionTargets;
  use Moose;
  has ActionExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionExecutionId' , required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::TargetFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployActionExecutionTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListDeployActionExecutionTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListDeployActionExecutionTargets - Arguments for method ListDeployActionExecutionTargets on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeployActionExecutionTargets on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListDeployActionExecutionTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeployActionExecutionTargets.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListDeployActionExecutionTargetsOutput =
      $codepipeline->ListDeployActionExecutionTargets(
      ActionExecutionId => 'MyActionExecutionId',
      Filters           => [
        {
          Name   => 'TARGET_STATUS',    # values: TARGET_STATUS; OPTIONAL
          Values => [
            'MyTargetFilterValue', ...    # min: 1
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      PipelineName => 'MyPipelineName',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListDeployActionExecutionTargetsOutput->NextToken;
    my $Targets   = $ListDeployActionExecutionTargetsOutput->Targets;

# Returns a L<Paws::CodePipeline::ListDeployActionExecutionTargetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListDeployActionExecutionTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionExecutionId => Str

The execution ID for the deploy action.



=head2 Filters => ArrayRef[L<Paws::CodePipeline::TargetFilter>]

Filters the targets for a specified deploy action.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.



=head2 NextToken => Str

An identifier that was returned from the previous list action types
call, which can be used to return the next set of action types in the
list.



=head2 PipelineName => Str

The name of the pipeline with the deploy action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeployActionExecutionTargets in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

