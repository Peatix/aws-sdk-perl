
package Paws::SageMaker::CreateInferenceRecommendationsJob;
  use Moose;
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobInputConfig', required => 1);
  has JobDescription => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobOutputConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingConditions => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobStoppingConditions');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInferenceRecommendationsJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateInferenceRecommendationsJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateInferenceRecommendationsJob - Arguments for method CreateInferenceRecommendationsJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInferenceRecommendationsJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateInferenceRecommendationsJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInferenceRecommendationsJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateInferenceRecommendationsJobResponse =
      $api . sagemaker->CreateInferenceRecommendationsJob(
      InputConfig => {
        ContainerConfig => {
          DataInputConfig =>
            'MyRecommendationJobDataInputConfig',  # min: 1, max: 1024; OPTIONAL
          Domain           => 'MyString',          # OPTIONAL
          Framework        => 'MyString',          # OPTIONAL
          FrameworkVersion =>
            'MyRecommendationJobFrameworkVersion', # min: 3, max: 10; OPTIONAL
          NearestModelName => 'MyString',          # OPTIONAL
          PayloadConfig    => {
            SamplePayloadUrl      => 'MyS3Uri',    # max: 1024; OPTIONAL
            SupportedContentTypes => [
              'MyRecommendationJobSupportedContentType', ...    # max: 256
            ],    # OPTIONAL
          },    # OPTIONAL
          SupportedEndpointType =>
            'RealTime',    # values: RealTime, Serverless; OPTIONAL
          SupportedInstanceTypes => [
            'MyString', ...    # OPTIONAL
          ],    # OPTIONAL
          SupportedResponseMIMETypes => [
            'MyRecommendationJobSupportedResponseMIMEType', ...    # max: 1024
          ],    # OPTIONAL
          Task => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        EndpointConfigurations => [
          {
            EnvironmentParameterRanges => {
              CategoricalParameterRanges => [
                {
                  Name  => 'MyString64',    # max: 64
                  Value => [
                    'MyString128', ...      # max: 128
                  ],    # min: 1, max: 3

                },
                ...
              ],    # min: 1, max: 5; OPTIONAL
            },    # OPTIONAL
            InferenceSpecificationName =>
              'MyInferenceSpecificationName',    # min: 1, max: 63; OPTIONAL
            InstanceType => 'ml.t2.medium'
            , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge; OPTIONAL
            ServerlessConfig => {
              MaxConcurrency         => 1,    # min: 1, max: 200
              MemorySizeInMB         => 1,    # min: 1024, max: 6144
              ProvisionedConcurrency => 1,    # min: 1, max: 200; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Endpoints => [
          {
            EndpointName => 'MyEndpointName',    # max: 63; OPTIONAL
          },
          ...
        ],    # max: 1; OPTIONAL
        JobDurationInSeconds   => 1,                # min: 1; OPTIONAL
        ModelName              => 'MyModelName',    # max: 63; OPTIONAL
        ModelPackageVersionArn =>
          'MyModelPackageArn',    # min: 1, max: 2048; OPTIONAL
        ResourceLimit => {
          MaxNumberOfTests   => 1,    # min: 1; OPTIONAL
          MaxParallelOfTests => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        TrafficPattern => {
          Phases => [
            {
              DurationInSeconds    => 1,    # min: 1; OPTIONAL
              InitialNumberOfUsers => 1,    # min: 1; OPTIONAL
              SpawnRate            => 1,    # OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
          Stairs => {
            DurationInSeconds => 1,    # min: 1; OPTIONAL
            NumberOfSteps     => 1,    # min: 1; OPTIONAL
            UsersPerStep      => 1,    # min: 1, max: 3; OPTIONAL
          },    # OPTIONAL
          TrafficType => 'PHASES',    # values: PHASES, STAIRS; OPTIONAL
        },    # OPTIONAL
        VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        VpcConfig      => {
          SecurityGroupIds => [
            'MyRecommendationJobVpcSecurityGroupId', ...    # max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MyRecommendationJobVpcSubnetId', ...    # max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },
      JobName        => 'MyRecommendationJobName',
      JobType        => 'Default',
      RoleArn        => 'MyRoleArn',
      JobDescription => 'MyRecommendationJobDescription',    # OPTIONAL
      OutputConfig   => {
        CompiledOutputConfig => {
          S3OutputUri => 'MyS3Uri',    # max: 1024; OPTIONAL
        },    # OPTIONAL
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      StoppingConditions => {
        FlatInvocations        => 'Continue', # values: Continue, Stop; OPTIONAL
        MaxInvocations         => 1,          # OPTIONAL
        ModelLatencyThresholds => [
          {
            Percentile          => 'MyString64',    # max: 64
            ValueInMilliseconds => 1,               # OPTIONAL
          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $JobArn = $CreateInferenceRecommendationsJobResponse->JobArn;

# Returns a L<Paws::SageMaker::CreateInferenceRecommendationsJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateInferenceRecommendationsJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::RecommendationJobInputConfig>

Provides information about the versioned model package Amazon Resource
Name (ARN), the traffic pattern, and endpoint configurations.



=head2 JobDescription => Str

Description of the recommendation job.



=head2 B<REQUIRED> JobName => Str

A name for the recommendation job. The name must be unique within the
Amazon Web Services Region and within your Amazon Web Services account.
The job name is passed down to the resources created by the
recommendation job. The names of resources (such as the model, endpoint
configuration, endpoint, and compilation) that are prefixed with the
job name are truncated at 40 characters.



=head2 B<REQUIRED> JobType => Str

Defines the type of recommendation job. Specify C<Default> to initiate
an instance recommendation and C<Advanced> to initiate a load test. If
left unspecified, Amazon SageMaker Inference Recommender will run an
instance recommendation (C<DEFAULT>) job.

Valid values are: C<"Default">, C<"Advanced">

=head2 OutputConfig => L<Paws::SageMaker::RecommendationJobOutputConfig>

Provides information about the output artifacts and the KMS key to use
for Amazon S3 server-side encryption.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker to perform tasks on your behalf.



=head2 StoppingConditions => L<Paws::SageMaker::RecommendationJobStoppingConditions>

A set of conditions for stopping a recommendation job. If any of the
conditions are met, the job is automatically stopped.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

The metadata that you apply to Amazon Web Services resources to help
you categorize and organize them. Each tag consists of a key and a
value, both of which you define. For more information, see Tagging
Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
Amazon Web Services General Reference.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInferenceRecommendationsJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

