
package Paws::Bedrock::CreateModelCustomizationJob;
  use Moose;
  has BaseModelIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseModelIdentifier', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CustomizationConfig => (is => 'ro', isa => 'Paws::Bedrock::CustomizationConfig', traits => ['NameInRequest'], request_name => 'customizationConfig');
  has CustomizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customizationType');
  has CustomModelKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customModelKmsKeyId');
  has CustomModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customModelName', required => 1);
  has CustomModelTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'customModelTags');
  has HyperParameters => (is => 'ro', isa => 'Paws::Bedrock::ModelCustomizationHyperParameters', traits => ['NameInRequest'], request_name => 'hyperParameters');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'jobTags');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::OutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has TrainingDataConfig => (is => 'ro', isa => 'Paws::Bedrock::TrainingDataConfig', traits => ['NameInRequest'], request_name => 'trainingDataConfig', required => 1);
  has ValidationDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ValidationDataConfig', traits => ['NameInRequest'], request_name => 'validationDataConfig');
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelCustomizationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-customization-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateModelCustomizationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateModelCustomizationJob - Arguments for method CreateModelCustomizationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelCustomizationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateModelCustomizationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelCustomizationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateModelCustomizationJobResponse =
      $bedrock->CreateModelCustomizationJob(
      BaseModelIdentifier => 'MyBaseModelIdentifier',
      CustomModelName     => 'MyCustomModelName',
      JobName             => 'MyJobName',
      OutputDataConfig    => {
        S3Uri => 'MyS3Uri',    # min: 1, max: 1024

      },
      RoleArn            => 'MyRoleArn',
      TrainingDataConfig => {
        InvocationLogsConfig => {
          InvocationLogSource => {
            S3Uri => 'MyS3Uri',    # min: 1, max: 1024
          },
          RequestMetadataFilters => {
            AndAll => [
              {
                Equals => {
                  'MyRequestMetadataMapKeyString' =>
                    'MyRequestMetadataMapValueString'
                  ,    # key: min: 1, max: 256, value: max: 256
                },    # min: 1, max: 1; OPTIONAL
                NotEquals => {
                  'MyRequestMetadataMapKeyString' =>
                    'MyRequestMetadataMapValueString'
                  ,    # key: min: 1, max: 256, value: max: 256
                },    # min: 1, max: 1; OPTIONAL
              },
              ...
            ],    # min: 1, max: 16; OPTIONAL
            Equals => {
              'MyRequestMetadataMapKeyString' =>
                'MyRequestMetadataMapValueString'
              ,    # key: min: 1, max: 256, value: max: 256
            },    # min: 1, max: 1; OPTIONAL
            NotEquals => {
              'MyRequestMetadataMapKeyString' =>
                'MyRequestMetadataMapValueString'
              ,    # key: min: 1, max: 256, value: max: 256
            },    # min: 1, max: 1; OPTIONAL
            OrAll => [
              {
                Equals => {
                  'MyRequestMetadataMapKeyString' =>
                    'MyRequestMetadataMapValueString'
                  ,    # key: min: 1, max: 256, value: max: 256
                },    # min: 1, max: 1; OPTIONAL
                NotEquals => {
                  'MyRequestMetadataMapKeyString' =>
                    'MyRequestMetadataMapValueString'
                  ,    # key: min: 1, max: 256, value: max: 256
                },    # min: 1, max: 1; OPTIONAL
              },
              ...
            ],    # min: 1, max: 16; OPTIONAL
          },    # OPTIONAL
          UsePromptResponse => 1,    # OPTIONAL
        },    # OPTIONAL
        S3Uri => 'MyS3Uri',    # min: 1, max: 1024
      },
      ClientRequestToken  => 'MyIdempotencyToken',    # OPTIONAL
      CustomModelKmsKeyId => 'MyKmsKeyId',            # OPTIONAL
      CustomModelTags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      CustomizationConfig => {
        DistillationConfig => {
          TeacherModelConfig => {
            TeacherModelIdentifier        => 'MyTeacherModelIdentifier',
            MaxResponseLengthForInference => 1,    # OPTIONAL
          },

        },    # OPTIONAL
      },    # OPTIONAL
      CustomizationType => 'FINE_TUNING',                    # OPTIONAL
      HyperParameters   => { 'MyString' => 'MyString', },    # OPTIONAL
      JobTags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ValidationDataConfig => {
        Validators => [
          {
            S3Uri => 'MyS3Uri',    # min: 1, max: 1024

          },
          ...
        ],    # max: 10

      },    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        SubnetIds => [
          'MySubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
      );

    # Results:
    my $JobArn = $CreateModelCustomizationJobResponse->JobArn;

    # Returns a L<Paws::Bedrock::CreateModelCustomizationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateModelCustomizationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelIdentifier => Str

Name of the base model.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 CustomizationConfig => L<Paws::Bedrock::CustomizationConfig>

The customization configuration for the model customization job.



=head2 CustomizationType => Str

The customization type.

Valid values are: C<"FINE_TUNING">, C<"CONTINUED_PRE_TRAINING">, C<"DISTILLATION">

=head2 CustomModelKmsKeyId => Str

The custom model is encrypted at rest using this key.



=head2 B<REQUIRED> CustomModelName => Str

A name for the resulting custom model.



=head2 CustomModelTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to attach to the resulting custom model.



=head2 HyperParameters => L<Paws::Bedrock::ModelCustomizationHyperParameters>

Parameters related to tuning the model. For details on the format for
different models, see Custom model hyperparameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html).



=head2 B<REQUIRED> JobName => Str

A name for the fine-tuning job.



=head2 JobTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to attach to the job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::OutputDataConfig>

S3 location for the output data.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM service role that Amazon
Bedrock can assume to perform tasks on your behalf. For example, during
model training, Amazon Bedrock needs your permission to read input data
from an S3 bucket, write model artifacts to an S3 bucket. To pass this
role to Amazon Bedrock, the caller of this API must have the
C<iam:PassRole> permission.



=head2 B<REQUIRED> TrainingDataConfig => L<Paws::Bedrock::TrainingDataConfig>

Information about the training dataset.



=head2 ValidationDataConfig => L<Paws::Bedrock::ValidationDataConfig>

Information about the validation dataset.



=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

The configuration of the Virtual Private Cloud (VPC) that contains the
resources that you're using for this job. For more information, see
Protect your model customization jobs using a VPC
(https://docs.aws.amazon.com/bedrock/latest/userguide/vpc-model-customization.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelCustomizationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

