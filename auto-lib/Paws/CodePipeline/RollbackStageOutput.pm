
package Paws::CodePipeline::RollbackStageOutput;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RollbackStageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineExecutionId => Str

The execution ID of the pipeline execution for the stage that has been
rolled back.


=head2 _request_id => Str


=cut

1;