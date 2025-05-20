
package Paws::CodePipeline::ListRuleExecutions;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CodePipeline::RuleExecutionFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListRuleExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListRuleExecutions - Arguments for method ListRuleExecutions on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleExecutions on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListRuleExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleExecutions.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListRuleExecutionsOutput = $codepipeline->ListRuleExecutions(
      PipelineName => 'MyPipelineName',
      Filter       => {
        LatestInPipelineExecution => {
          PipelineExecutionId => 'MyPipelineExecutionId',
          StartTimeRange      => 'Latest',                 # values: Latest, All

        },    # OPTIONAL
        PipelineExecutionId => 'MyPipelineExecutionId',
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken            = $ListRuleExecutionsOutput->NextToken;
    my $RuleExecutionDetails = $ListRuleExecutionsOutput->RuleExecutionDetails;

    # Returns a L<Paws::CodePipeline::ListRuleExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListRuleExecutions>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CodePipeline::RuleExecutionFilter>

Input information used to filter rule execution history.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value. Pipeline history is limited to the most recent 12 months, based
on pipeline execution start times. Default value is 100.



=head2 NextToken => Str

The token that was returned from the previous C<ListRuleExecutions>
call, which can be used to return the next set of rule executions in
the list.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline for which you want to get execution summary
information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleExecutions in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

