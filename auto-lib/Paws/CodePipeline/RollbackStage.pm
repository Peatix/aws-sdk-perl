
package Paws::CodePipeline::RollbackStage;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);
  has TargetPipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetPipelineExecutionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RollbackStage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::RollbackStageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RollbackStage - Arguments for method RollbackStage on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RollbackStage on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method RollbackStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RollbackStage.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $RollbackStageOutput = $codepipeline->RollbackStage(
      PipelineName              => 'MyPipelineName',
      StageName                 => 'MyStageName',
      TargetPipelineExecutionId => 'MyPipelineExecutionId',

    );

    # Results:
    my $PipelineExecutionId = $RollbackStageOutput->PipelineExecutionId;

    # Returns a L<Paws::CodePipeline::RollbackStageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/RollbackStage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline for which the stage will be rolled back.



=head2 B<REQUIRED> StageName => Str

The name of the stage in the pipeline to be rolled back.



=head2 B<REQUIRED> TargetPipelineExecutionId => Str

The pipeline execution ID for the stage to be rolled back to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RollbackStage in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

