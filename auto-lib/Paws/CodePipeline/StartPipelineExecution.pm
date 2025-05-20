
package Paws::CodePipeline::StartPipelineExecution;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SourceRevisions => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::SourceRevisionOverride]', traits => ['NameInRequest'], request_name => 'sourceRevisions' );
  has Variables => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::PipelineVariable]', traits => ['NameInRequest'], request_name => 'variables' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::StartPipelineExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StartPipelineExecution - Arguments for method StartPipelineExecution on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPipelineExecution on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method StartPipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPipelineExecution.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $StartPipelineExecutionOutput = $codepipeline->StartPipelineExecution(
      Name               => 'MyPipelineName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      SourceRevisions    => [
        {
          ActionName   => 'MyActionName',    # min: 1, max: 100
          RevisionType => 'COMMIT_ID'
          , # values: COMMIT_ID, IMAGE_DIGEST, S3_OBJECT_VERSION_ID, S3_OBJECT_KEY
          RevisionValue => 'MyRevision',    # min: 1, max: 1500

        },
        ...
      ],    # OPTIONAL
      Variables => [
        {
          Name  => 'MyPipelineVariableName',     # min: 1, max: 128
          Value => 'MyPipelineVariableValue',    # min: 1, max: 1000

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $PipelineExecutionId =
      $StartPipelineExecutionOutput->PipelineExecutionId;

    # Returns a L<Paws::CodePipeline::StartPipelineExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/StartPipelineExecution>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The system-generated unique ID used to identify a unique execution
request.



=head2 B<REQUIRED> Name => Str

The name of the pipeline to start.



=head2 SourceRevisions => ArrayRef[L<Paws::CodePipeline::SourceRevisionOverride>]

A list that allows you to specify, or override, the source revision for
a pipeline execution that's being started. A source revision is the
version with all the changes to your application code, or source
artifact, for the pipeline execution.



=head2 Variables => ArrayRef[L<Paws::CodePipeline::PipelineVariable>]

A list that overrides pipeline variables for a pipeline execution
that's being started. Variable names must match C<[A-Za-z0-9@\-_]+>,
and the values can be anything except an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPipelineExecution in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

