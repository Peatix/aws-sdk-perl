
package Paws::SageMaker::CreateInferenceExperiment;
  use Moose;
  has DataStorageConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentDataStorageConfig');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKey => (is => 'ro', isa => 'Str');
  has ModelVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelVariantConfig]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentSchedule');
  has ShadowModeConfig => (is => 'ro', isa => 'Paws::SageMaker::ShadowModeConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInferenceExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateInferenceExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateInferenceExperiment - Arguments for method CreateInferenceExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInferenceExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateInferenceExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInferenceExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateInferenceExperimentResponse =
      $api . sagemaker->CreateInferenceExperiment(
      EndpointName  => 'MyEndpointName',
      ModelVariants => [
        {
          InfrastructureConfig => {
            InfrastructureType =>
              'RealTimeInference',    # values: RealTimeInference
            RealTimeInferenceConfig => {
              InstanceCount => 1,
              InstanceType  => 'ml.t2.medium'
              , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge

            },

          },
          ModelName   => 'MyModelName',           # max: 63
          VariantName => 'MyModelVariantName',    # max: 63

        },
        ...
      ],
      Name             => 'MyInferenceExperimentName',
      RoleArn          => 'MyRoleArn',
      ShadowModeConfig => {
        ShadowModelVariants => [
          {
            SamplingPercentage     => 1,                       # max: 100
            ShadowModelVariantName => 'MyModelVariantName',    # max: 63

          },
          ...
        ],    # min: 1, max: 1
        SourceModelVariantName => 'MyModelVariantName',    # max: 63

      },
      Type              => 'ShadowMode',
      DataStorageConfig => {
        Destination => 'MyDestinationS3Uri',               # max: 512
        ContentType => {
          CsvContentTypes => [
            'MyCsvContentType', ...                        # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
          JsonContentTypes => [
            'MyJsonContentType', ...    # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        KmsKey => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      Description => 'MyInferenceExperimentDescription',    # OPTIONAL
      KmsKey      => 'MyKmsKeyId',                          # OPTIONAL
      Schedule    => {
        EndTime   => '1970-01-01T01:00:00',                 # OPTIONAL
        StartTime => '1970-01-01T01:00:00',                 # OPTIONAL
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
    my $InferenceExperimentArn =
      $CreateInferenceExperimentResponse->InferenceExperimentArn;

    # Returns a L<Paws::SageMaker::CreateInferenceExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateInferenceExperiment>

=head1 ATTRIBUTES


=head2 DataStorageConfig => L<Paws::SageMaker::InferenceExperimentDataStorageConfig>

The Amazon S3 location and configuration for storing inference request
and response data.

This is an optional parameter that you can use for data capture. For
more information, see Capture data
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html).



=head2 Description => Str

A description for the inference experiment.



=head2 B<REQUIRED> EndpointName => Str

The name of the Amazon SageMaker endpoint on which you want to run the
inference experiment.



=head2 KmsKey => Str

The Amazon Web Services Key Management Service (Amazon Web Services
KMS) key that Amazon SageMaker uses to encrypt data on the storage
volume attached to the ML compute instance that hosts the endpoint. The
C<KmsKey> can be any of the following formats:

=over

=item *

KMS key ID

C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS key

C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

KMS key Alias

C<"alias/ExampleAlias">

=item *

Amazon Resource Name (ARN) of a KMS key Alias

C<"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias">

=back

If you use a KMS key ID or an alias of your KMS key, the Amazon
SageMaker execution role must include permissions to call
C<kms:Encrypt>. If you don't provide a KMS key ID, Amazon SageMaker
uses the default KMS key for Amazon S3 for your role's account. Amazon
SageMaker uses server-side encryption with KMS managed keys for
C<OutputDataConfig>. If you use a bucket policy with an C<s3:PutObject>
permission that only allows objects with server-side encryption, set
the condition key of C<s3:x-amz-server-side-encryption> to
C<"aws:kms">. For more information, see KMS managed Encryption Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html)
in the I<Amazon Simple Storage Service Developer Guide.>

The KMS key policy must grant permission to the IAM role that you
specify in your C<CreateEndpoint> and C<UpdateEndpoint> requests. For
more information, see Using Key Policies in Amazon Web Services KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<Amazon Web Services Key Management Service Developer Guide>.



=head2 B<REQUIRED> ModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]

An array of C<ModelVariantConfig> objects. There is one for each
variant in the inference experiment. Each C<ModelVariantConfig> object
in the array describes the infrastructure configuration for the
corresponding variant.



=head2 B<REQUIRED> Name => Str

The name for the inference experiment.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that Amazon SageMaker can assume to access
model artifacts and container images, and manage Amazon SageMaker
Inference endpoints for model deployment.



=head2 Schedule => L<Paws::SageMaker::InferenceExperimentSchedule>

The duration for which you want the inference experiment to run. If you
don't specify this field, the experiment automatically starts
immediately upon creation and concludes after 7 days.



=head2 B<REQUIRED> ShadowModeConfig => L<Paws::SageMaker::ShadowModeConfig>

The configuration of C<ShadowMode> inference experiment type. Use this
field to specify a production variant which takes all the inference
requests, and a shadow variant to which Amazon SageMaker replicates a
percentage of the inference requests. For the shadow variant also
specify the percentage of requests that Amazon SageMaker replicates.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging your Amazon
Web Services Resources
(https://docs.aws.amazon.com/ARG/latest/userguide/tagging.html).



=head2 B<REQUIRED> Type => Str

The type of the inference experiment that you want to run. The
following types of experiments are possible:

=over

=item *

C<ShadowMode>: You can use this type to validate a shadow variant. For
more information, see Shadow tests
(https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html).

=back


Valid values are: C<"ShadowMode">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInferenceExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

