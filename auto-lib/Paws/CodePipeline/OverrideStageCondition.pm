
package Paws::CodePipeline::OverrideStageCondition;
  use Moose;
  has ConditionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conditionType' , required => 1);
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OverrideStageCondition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::OverrideStageCondition - Arguments for method OverrideStageCondition on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OverrideStageCondition on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method OverrideStageCondition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OverrideStageCondition.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->OverrideStageCondition(
      ConditionType       => 'BEFORE_ENTRY',
      PipelineExecutionId => 'MyPipelineExecutionId',
      PipelineName        => 'MyPipelineName',
      StageName           => 'MyStageName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/OverrideStageCondition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConditionType => Str

The type of condition to override for the stage, such as entry
conditions, failure conditions, or success conditions.

Valid values are: C<"BEFORE_ENTRY">, C<"ON_SUCCESS">

=head2 B<REQUIRED> PipelineExecutionId => Str

The ID of the pipeline execution for the override.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline with the stage that will override the
condition.



=head2 B<REQUIRED> StageName => Str

The name of the stage for the override.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OverrideStageCondition in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

