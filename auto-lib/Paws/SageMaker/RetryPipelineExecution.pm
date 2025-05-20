
package Paws::SageMaker::RetryPipelineExecution;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ParallelismConfiguration => (is => 'ro', isa => 'Paws::SageMaker::ParallelismConfiguration');
  has PipelineExecutionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetryPipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::RetryPipelineExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RetryPipelineExecution - Arguments for method RetryPipelineExecution on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetryPipelineExecution on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method RetryPipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetryPipelineExecution.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $RetryPipelineExecutionResponse =
      $api . sagemaker->RetryPipelineExecution(
      ClientRequestToken       => 'MyIdempotencyToken',
      PipelineExecutionArn     => 'MyPipelineExecutionArn',
      ParallelismConfiguration => {
        MaxParallelExecutionSteps => 1,    # min: 1

      },    # OPTIONAL
      );

    # Results:
    my $PipelineExecutionArn =
      $RetryPipelineExecutionResponse->PipelineExecutionArn;

    # Returns a L<Paws::SageMaker::RetryPipelineExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/RetryPipelineExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than once.



=head2 ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>

This configuration, if specified, overrides the parallelism
configuration of the parent pipeline.



=head2 B<REQUIRED> PipelineExecutionArn => Str

The Amazon Resource Name (ARN) of the pipeline execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetryPipelineExecution in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

