
package Paws::SageMaker::DescribeCompilationJobResponse;
  use Moose;
  has CompilationEndTime => (is => 'ro', isa => 'Str');
  has CompilationJobArn => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has CompilationStartTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DerivedInformation => (is => 'ro', isa => 'Paws::SageMaker::DerivedInformation');
  has FailureReason => (is => 'ro', isa => 'Str', required => 1);
  has InferenceImage => (is => 'ro', isa => 'Str');
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::InputConfig', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelArtifacts', required => 1);
  has ModelDigests => (is => 'ro', isa => 'Paws::SageMaker::ModelDigests');
  has ModelPackageVersionArn => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::NeoVpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCompilationJobResponse

=head1 ATTRIBUTES


=head2 CompilationEndTime => Str

The time when the model compilation job on a compilation job instance
ended. For a successful or stopped job, this is when the job's model
artifacts have finished uploading. For a failed job, this is when
Amazon SageMaker AI detected that the job failed.


=head2 B<REQUIRED> CompilationJobArn => Str

The Amazon Resource Name (ARN) of the model compilation job.


=head2 B<REQUIRED> CompilationJobName => Str

The name of the model compilation job.


=head2 B<REQUIRED> CompilationJobStatus => Str

The status of the model compilation job.

Valid values are: C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">
=head2 CompilationStartTime => Str

The time when the model compilation job started the C<CompilationJob>
instances.

You are billed for the time between this timestamp and the timestamp in
the C<CompilationEndTime> field. In Amazon CloudWatch Logs, the start
time might be later than this time. That's because it takes time to
download the compilation job, which depends on the size of the
compilation job container.


=head2 B<REQUIRED> CreationTime => Str

The time that the model compilation job was created.


=head2 DerivedInformation => L<Paws::SageMaker::DerivedInformation>

Information that SageMaker Neo automatically derived about the model.


=head2 B<REQUIRED> FailureReason => Str

If a model compilation job failed, the reason it failed.


=head2 InferenceImage => Str

The inference image to use when compiling a model. Specify an image
only if the target device is a cloud instance.


=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::InputConfig>

Information about the location in Amazon S3 of the input model
artifacts, the name and shape of the expected data inputs, and the
framework in which the model was trained.


=head2 B<REQUIRED> LastModifiedTime => Str

The time that the status of the model compilation job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => L<Paws::SageMaker::ModelArtifacts>

Information about the location in Amazon S3 that has been configured
for storing the model artifacts used in the compilation job.


=head2 ModelDigests => L<Paws::SageMaker::ModelDigests>

Provides a BLAKE2 hash value that identifies the compiled model
artifacts in Amazon S3.


=head2 ModelPackageVersionArn => Str

The Amazon Resource Name (ARN) of the versioned model package that was
provided to SageMaker Neo when you initiated a compilation job.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OutputConfig>

Information about the output location for the compiled model and the
target device that the model runs on.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI
assumes to perform the model compilation job.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

Specifies a limit to how long a model compilation job can run. When the
job reaches the time limit, Amazon SageMaker AI ends the compilation
job. Use this API to cap model training costs.


=head2 VpcConfig => L<Paws::SageMaker::NeoVpcConfig>

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html)
object that specifies the VPC that you want your compilation job to
connect to. Control access to your models by configuring the VPC. For
more information, see Protect Compilation Jobs by Using an Amazon
Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/neo-vpc.html).


=head2 _request_id => Str


=cut

1;