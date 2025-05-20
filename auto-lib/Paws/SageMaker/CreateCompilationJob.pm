
package Paws::SageMaker::CreateCompilationJob;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::InputConfig');
  has ModelPackageVersionArn => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::NeoVpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCompilationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateCompilationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCompilationJob - Arguments for method CreateCompilationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCompilationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateCompilationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCompilationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateCompilationJobResponse = $api . sagemaker->CreateCompilationJob(
      CompilationJobName => 'MyEntityName',
      OutputConfig       => {
        S3OutputLocation => 'MyS3Uri',             # max: 1024
        CompilerOptions  => 'MyCompilerOptions',   # min: 3, max: 1024; OPTIONAL
        KmsKeyId         => 'MyKmsKeyId',          # max: 2048; OPTIONAL
        TargetDevice     => 'lambda'
        , # values: lambda, ml_m4, ml_m5, ml_m6g, ml_c4, ml_c5, ml_c6g, ml_p2, ml_p3, ml_g4dn, ml_inf1, ml_inf2, ml_trn1, ml_eia2, jetson_tx1, jetson_tx2, jetson_nano, jetson_xavier, rasp3b, rasp4b, imx8qm, deeplens, rk3399, rk3288, aisage, sbe_c, qcs605, qcs603, sitara_am57x, amba_cv2, amba_cv22, amba_cv25, x86_win32, x86_win64, coreml, jacinto_tda4vm, imx8mplus; OPTIONAL
        TargetPlatform => {
          Arch => 'X86_64',   # values: X86_64, X86, ARM64, ARM_EABI, ARM_EABIHF
          Os   => 'ANDROID',  # values: ANDROID, LINUX
          Accelerator => 'INTEL_GRAPHICS'
          ,    # values: INTEL_GRAPHICS, MALI, NVIDIA, NNA; OPTIONAL
        },    # OPTIONAL
      },
      RoleArn           => 'MyRoleArn',
      StoppingCondition => {
        MaxPendingTimeInSeconds => 1,    # min: 7200, max: 2419200; OPTIONAL
        MaxRuntimeInSeconds     => 1,    # min: 1; OPTIONAL
        MaxWaitTimeInSeconds    => 1,    # min: 1; OPTIONAL
      },
      InputConfig => {
        Framework => 'TENSORFLOW'
        , # values: TENSORFLOW, KERAS, MXNET, ONNX, PYTORCH, XGBOOST, TFLITE, DARKNET, SKLEARN
        S3Uri            => 'MyS3Uri',            # max: 1024
        DataInputConfig  => 'MyDataInputConfig',  # min: 1, max: 16384; OPTIONAL
        FrameworkVersion => 'MyFrameworkVersion', # min: 3, max: 10; OPTIONAL
      },    # OPTIONAL
      ModelPackageVersionArn => 'MyModelPackageArn',    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyNeoVpcSecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MyNeoVpcSubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $CompilationJobArn = $CreateCompilationJobResponse->CompilationJobArn;

    # Returns a L<Paws::SageMaker::CreateCompilationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateCompilationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobName => Str

A name for the model compilation job. The name must be unique within
the Amazon Web Services Region and within your Amazon Web Services
account.



=head2 InputConfig => L<Paws::SageMaker::InputConfig>

Provides information about the location of input model artifacts, the
name and shape of the expected data inputs, and the framework in which
the model was trained.



=head2 ModelPackageVersionArn => Str

The Amazon Resource Name (ARN) of a versioned model package. Provide
either a C<ModelPackageVersionArn> or an C<InputConfig> object in the
request syntax. The presence of both objects in the
C<CreateCompilationJob> request will return an exception.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OutputConfig>

Provides information about the output location for the compiled model
and the target device the model runs on.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker AI to perform tasks on your behalf.

During model compilation, Amazon SageMaker AI needs your permission to:

=over

=item *

Read input data from an S3 bucket

=item *

Write model artifacts to an S3 bucket

=item *

Write logs to Amazon CloudWatch Logs

=item *

Publish metrics to Amazon CloudWatch

=back

You grant permissions for all of these tasks to an IAM role. To pass
this role to Amazon SageMaker AI, the caller of this API must have the
C<iam:PassRole> permission. For more information, see Amazon SageMaker
AI Roles.
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html)



=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

Specifies a limit to how long a model compilation job can run. When the
job reaches the time limit, Amazon SageMaker AI ends the compilation
job. Use this API to cap model training costs.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 VpcConfig => L<Paws::SageMaker::NeoVpcConfig>

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html)
object that specifies the VPC that you want your compilation job to
connect to. Control access to your models by configuring the VPC. For
more information, see Protect Compilation Jobs by Using an Amazon
Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/neo-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCompilationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

