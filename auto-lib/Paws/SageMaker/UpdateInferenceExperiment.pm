
package Paws::SageMaker::UpdateInferenceExperiment;
  use Moose;
  has DataStorageConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentDataStorageConfig');
  has Description => (is => 'ro', isa => 'Str');
  has ModelVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelVariantConfig]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentSchedule');
  has ShadowModeConfig => (is => 'ro', isa => 'Paws::SageMaker::ShadowModeConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInferenceExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateInferenceExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateInferenceExperiment - Arguments for method UpdateInferenceExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInferenceExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateInferenceExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInferenceExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateInferenceExperimentResponse =
      $api . sagemaker->UpdateInferenceExperiment(
      Name              => 'MyInferenceExperimentName',
      DataStorageConfig => {
        Destination => 'MyDestinationS3Uri',    # max: 512
        ContentType => {
          CsvContentTypes => [
            'MyCsvContentType', ...             # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
          JsonContentTypes => [
            'MyJsonContentType', ...    # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        KmsKey => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      Description   => 'MyInferenceExperimentDescription',    # OPTIONAL
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
      ],    # OPTIONAL
      Schedule => {
        EndTime   => '1970-01-01T01:00:00',    # OPTIONAL
        StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ShadowModeConfig => {
        ShadowModelVariants => [
          {
            SamplingPercentage     => 1,                       # max: 100
            ShadowModelVariantName => 'MyModelVariantName',    # max: 63

          },
          ...
        ],    # min: 1, max: 1
        SourceModelVariantName => 'MyModelVariantName',    # max: 63

      },    # OPTIONAL
      );

    # Results:
    my $InferenceExperimentArn =
      $UpdateInferenceExperimentResponse->InferenceExperimentArn;

    # Returns a L<Paws::SageMaker::UpdateInferenceExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateInferenceExperiment>

=head1 ATTRIBUTES


=head2 DataStorageConfig => L<Paws::SageMaker::InferenceExperimentDataStorageConfig>

The Amazon S3 location and configuration for storing inference request
and response data.



=head2 Description => Str

The description of the inference experiment.



=head2 ModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]

An array of C<ModelVariantConfig> objects. There is one for each
variant, whose infrastructure configuration you want to update.



=head2 B<REQUIRED> Name => Str

The name of the inference experiment to be updated.



=head2 Schedule => L<Paws::SageMaker::InferenceExperimentSchedule>

The duration for which the inference experiment will run. If the status
of the inference experiment is C<Created>, then you can update both the
start and end dates. If the status of the inference experiment is
C<Running>, then you can update only the end date.



=head2 ShadowModeConfig => L<Paws::SageMaker::ShadowModeConfig>

The configuration of C<ShadowMode> inference experiment type. Use this
field to specify a production variant which takes all the inference
requests, and a shadow variant to which Amazon SageMaker replicates a
percentage of the inference requests. For the shadow variant also
specify the percentage of requests that Amazon SageMaker replicates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInferenceExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

