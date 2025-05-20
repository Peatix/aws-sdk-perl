
package Paws::SageMaker::CreateModelPackage;
  use Moose;
  has AdditionalInferenceSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AdditionalInferenceSpecificationDefinition]');
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has ClientToken => (is => 'ro', isa => 'Str');
  has CustomerMetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::CustomerMetadataMap');
  has Domain => (is => 'ro', isa => 'Str');
  has DriftCheckBaselines => (is => 'ro', isa => 'Paws::SageMaker::DriftCheckBaselines');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has ModelApprovalStatus => (is => 'ro', isa => 'Str');
  has ModelCard => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageModelCard');
  has ModelLifeCycle => (is => 'ro', isa => 'Paws::SageMaker::ModelLifeCycle');
  has ModelMetrics => (is => 'ro', isa => 'Paws::SageMaker::ModelMetrics');
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str');
  has SamplePayloadUrl => (is => 'ro', isa => 'Str');
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageSecurityConfig');
  has SkipModelValidation => (is => 'ro', isa => 'Str');
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has SourceUri => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has Task => (is => 'ro', isa => 'Str');
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageValidationSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackage - Arguments for method CreateModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelPackageOutput = $api . sagemaker->CreateModelPackage(
      AdditionalInferenceSpecifications => [
        {
          Containers => [
            {
              Image                  => 'MyContainerImage',    # max: 255
              AdditionalS3DataSource => {
                S3DataType      => 'S3Object',    # values: S3Object, S3Prefix
                S3Uri           => 'MyS3Uri',     # max: 1024
                CompressionType => 'None',        # values: None, Gzip; OPTIONAL
                ETag            => 'MyString',    # OPTIONAL
              },    # OPTIONAL
              ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
              Environment       => {
                'MyEnvironmentKey' =>
                  'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
              },    # max: 100; OPTIONAL
              Framework        => 'MyString',        # OPTIONAL
              FrameworkVersion =>
                'MyModelPackageFrameworkVersion',    # min: 3, max: 10; OPTIONAL
              ImageDigest     => 'MyImageDigest',    # max: 72; OPTIONAL
              ModelDataETag   => 'MyString',         # OPTIONAL
              ModelDataSource => {
                S3DataSource => {
                  CompressionType => 'None',        # values: None, Gzip
                  S3DataType      => 'S3Prefix',    # values: S3Prefix, S3Object
                  S3Uri           => 'MyS3ModelUri',    # max: 1024
                  ETag            => 'MyString',        # OPTIONAL
                  HubAccessConfig => {
                    HubContentArn => 'MyHubContentArn',    # max: 255

                  },    # OPTIONAL
                  ManifestEtag      => 'MyString',        # OPTIONAL
                  ManifestS3Uri     => 'MyS3ModelUri',    # max: 1024
                  ModelAccessConfig => {
                    AcceptEula => 1,

                  },                                      # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              ModelDataUrl => 'MyUrl',    # max: 1024; OPTIONAL
              ModelInput   => {
                DataInputConfig => 'MyDataInputConfig',    # min: 1, max: 16384

              },    # OPTIONAL
              NearestModelName => 'MyString',       # OPTIONAL
              ProductId        => 'MyProductId',    # max: 256; OPTIONAL
            },
            ...
          ],    # min: 1, max: 15
          Name                  => 'MyEntityName',         # min: 1, max: 63
          Description           => 'MyEntityDescription',  # max: 1024; OPTIONAL
          SupportedContentTypes => [
            'MyContentType', ...                           # max: 256
          ],    # OPTIONAL
          SupportedRealtimeInferenceInstanceTypes => [
            'ml.t2.medium',
            ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge
          ],    # OPTIONAL
          SupportedResponseMIMETypes => [
            'MyResponseMIMEType', ...    # max: 1024
          ],    # OPTIONAL
          SupportedTransformInstanceTypes => [
            'ml.m4.xlarge',
            ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
          ],    # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      CertifyForMarketplace      => 1,                  # OPTIONAL
      ClientToken                => 'MyClientToken',    # OPTIONAL
      CustomerMetadataProperties => {
        'MyCustomerMetadataKey' => 'MyCustomerMetadataValue'
        ,    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      Domain              => 'MyString',    # OPTIONAL
      DriftCheckBaselines => {
        Bias => {
          ConfigFile => {
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
            ContentType   => 'MyContentType',      # max: 256
          },    # OPTIONAL
          PostTrainingConstraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          PreTrainingConstraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Explainability => {
          ConfigFile => {
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
            ContentType   => 'MyContentType',      # max: 256
          },    # OPTIONAL
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelDataQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InferenceSpecification => {
        Containers => [
          {
            Image                  => 'MyContainerImage',    # max: 255
            AdditionalS3DataSource => {
              S3DataType      => 'S3Object',    # values: S3Object, S3Prefix
              S3Uri           => 'MyS3Uri',     # max: 1024
              CompressionType => 'None',        # values: None, Gzip; OPTIONAL
              ETag            => 'MyString',    # OPTIONAL
            },    # OPTIONAL
            ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
            Environment       => {
              'MyEnvironmentKey' =>
                'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
            },    # max: 100; OPTIONAL
            Framework        => 'MyString',        # OPTIONAL
            FrameworkVersion =>
              'MyModelPackageFrameworkVersion',    # min: 3, max: 10; OPTIONAL
            ImageDigest     => 'MyImageDigest',    # max: 72; OPTIONAL
            ModelDataETag   => 'MyString',         # OPTIONAL
            ModelDataSource => {
              S3DataSource => {
                CompressionType => 'None',          # values: None, Gzip
                S3DataType      => 'S3Prefix',      # values: S3Prefix, S3Object
                S3Uri           => 'MyS3ModelUri',  # max: 1024
                ETag            => 'MyString',      # OPTIONAL
                HubAccessConfig => {
                  HubContentArn => 'MyHubContentArn',    # max: 255

                },    # OPTIONAL
                ManifestEtag      => 'MyString',        # OPTIONAL
                ManifestS3Uri     => 'MyS3ModelUri',    # max: 1024
                ModelAccessConfig => {
                  AcceptEula => 1,

                },                                      # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            ModelDataUrl => 'MyUrl',    # max: 1024; OPTIONAL
            ModelInput   => {
              DataInputConfig => 'MyDataInputConfig',    # min: 1, max: 16384

            },    # OPTIONAL
            NearestModelName => 'MyString',       # OPTIONAL
            ProductId        => 'MyProductId',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 15
        SupportedContentTypes => [
          'MyContentType', ...    # max: 256
        ],    # OPTIONAL
        SupportedRealtimeInferenceInstanceTypes => [
          'ml.t2.medium',
          ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge
        ],    # OPTIONAL
        SupportedResponseMIMETypes => [
          'MyResponseMIMEType', ...    # max: 1024
        ],    # OPTIONAL
        SupportedTransformInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      MetadataProperties => {
        CommitId    => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        GeneratedBy => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        ProjectId   => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        Repository  => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      ModelApprovalStatus => 'Approved',    # OPTIONAL
      ModelCard           => {
        ModelCardContent => 'MyModelCardContent',    # max: 100000; OPTIONAL
        ModelCardStatus  =>
          'Draft',  # values: Draft, PendingReview, Approved, Archived; OPTIONAL
      },    # OPTIONAL
      ModelLifeCycle => {
        Stage            => 'MyEntityName',          # min: 1, max: 63
        StageStatus      => 'MyEntityName',          # min: 1, max: 63
        StageDescription => 'MyStageDescription',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      ModelMetrics => {
        Bias => {
          PostTrainingReport => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          PreTrainingReport => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Report => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Explainability => {
          Report => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelDataQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ModelPackageDescription => 'MyEntityDescription',    # OPTIONAL
      ModelPackageGroupName   => 'MyArnOrName',            # OPTIONAL
      ModelPackageName        => 'MyEntityName',           # OPTIONAL
      SamplePayloadUrl        => 'MyS3Uri',                # OPTIONAL
      SecurityConfig          => {
        KmsKeyId => 'MyKmsKeyId',                          # max: 2048

      },    # OPTIONAL
      SkipModelValidation          => 'All',    # OPTIONAL
      SourceAlgorithmSpecification => {
        SourceAlgorithms => [
          {
            AlgorithmName   => 'MyArnOrName',    # min: 1, max: 170
            ModelDataETag   => 'MyString',       # OPTIONAL
            ModelDataSource => {
              S3DataSource => {
                CompressionType => 'None',          # values: None, Gzip
                S3DataType      => 'S3Prefix',      # values: S3Prefix, S3Object
                S3Uri           => 'MyS3ModelUri',  # max: 1024
                ETag            => 'MyString',      # OPTIONAL
                HubAccessConfig => {
                  HubContentArn => 'MyHubContentArn',    # max: 255

                },    # OPTIONAL
                ManifestEtag      => 'MyString',        # OPTIONAL
                ManifestS3Uri     => 'MyS3ModelUri',    # max: 1024
                ModelAccessConfig => {
                  AcceptEula => 1,

                },                                      # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            ModelDataUrl => 'MyUrl',    # max: 1024; OPTIONAL
          },
          ...
        ],    # min: 1, max: 1

      },    # OPTIONAL
      SourceUri => 'MyModelPackageSourceUri',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Task                    => 'MyString',    # OPTIONAL
      ValidationSpecification => {
        ValidationProfiles => [
          {
            ProfileName            => 'MyEntityName',    # min: 1, max: 63
            TransformJobDefinition => {
              TransformInput => {
                DataSource => {
                  S3DataSource => {
                    S3DataType => 'ManifestFile'
                    ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
                    S3Uri => 'MyS3Uri',    # max: 1024

                  },

                },
                CompressionType => 'None',    # values: None, Gzip; OPTIONAL
                ContentType     => 'MyContentType',    # max: 256
                SplitType       =>
                  'None',    # values: None, Line, RecordIO, TFRecord; OPTIONAL
              },
              TransformOutput => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                Accept       => 'MyAccept',      # max: 256; OPTIONAL
                AssembleWith => 'None',          # values: None, Line; OPTIONAL
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048
              },
              TransformResources => {
                InstanceCount => 1,               # min: 1
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
                TransformAmiVersion =>
                  'MyTransformAmiVersion',    # min: 1, max: 63; OPTIONAL
                VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048
              },
              BatchStrategy =>
                'MultiRecord',    # values: MultiRecord, SingleRecord; OPTIONAL
              Environment => {
                'MyTransformEnvironmentKey' => 'MyTransformEnvironmentValue'
                ,                 # key: max: 1024, value: max: 10240
              },    # max: 16; OPTIONAL
              MaxConcurrentTransforms => 1,    # OPTIONAL
              MaxPayloadInMB          => 1,    # OPTIONAL
            },

          },
          ...
        ],    # max: 1
        ValidationRole => 'MyRoleArn',    # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $ModelPackageArn = $CreateModelPackageOutput->ModelPackageArn;

    # Returns a L<Paws::SageMaker::CreateModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModelPackage>

=head1 ATTRIBUTES


=head2 AdditionalInferenceSpecifications => ArrayRef[L<Paws::SageMaker::AdditionalInferenceSpecificationDefinition>]

An array of additional Inference Specification objects. Each additional
Inference Specification specifies artifacts based on this model package
that can be used on inference endpoints. Generally used with SageMaker
Neo to store the compiled artifacts.



=head2 CertifyForMarketplace => Bool

Whether to certify the model package for listing on Amazon Web Services
Marketplace.

This parameter is optional for unversioned models, and does not apply
to versioned models.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 CustomerMetadataProperties => L<Paws::SageMaker::CustomerMetadataMap>

The metadata properties associated with the model package versions.



=head2 Domain => Str

The machine learning domain of your model package and its components.
Common machine learning domains include computer vision and natural
language processing.



=head2 DriftCheckBaselines => L<Paws::SageMaker::DriftCheckBaselines>

Represents the drift check baselines that can be used when the model
monitor is set using the model package. For more information, see the
topic on Drift Detection against Previous Baselines in SageMaker
Pipelines
(https://docs.aws.amazon.com/sagemaker/latest/dg/pipelines-quality-clarify-baseline-lifecycle.html#pipelines-quality-clarify-baseline-drift-detection)
in the I<Amazon SageMaker Developer Guide>.



=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Specifies details about inference jobs that you can run with models
based on this model package, including the following information:

=over

=item *

The Amazon ECR paths of containers that contain the inference code and
model artifacts.

=item *

The instance types that the model package supports for transform jobs
and real-time endpoints used for inference.

=item *

The input and output content formats that the model package supports
for inference.

=back




=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>





=head2 ModelApprovalStatus => Str

Whether the model is approved for deployment.

This parameter is optional for versioned models, and does not apply to
unversioned models.

For versioned models, the value of this parameter must be set to
C<Approved> to deploy the model.

Valid values are: C<"Approved">, C<"Rejected">, C<"PendingManualApproval">

=head2 ModelCard => L<Paws::SageMaker::ModelPackageModelCard>

The model card associated with the model package. Since
C<ModelPackageModelCard> is tied to a model package, it is a specific
usage of a model card and its schema is simplified compared to the
schema of C<ModelCard>. The C<ModelPackageModelCard> schema does not
include C<model_package_details>, and C<model_overview> is composed of
the C<model_creator> and C<model_artifact> properties. For more
information about the model package model card schema, see Model
package model card schema
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-registry-details.html#model-card-schema).
For more information about the model card associated with the model
package, see View the Details of a Model Version
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-registry-details.html).



=head2 ModelLifeCycle => L<Paws::SageMaker::ModelLifeCycle>

A structure describing the current state of the model in its life
cycle.



=head2 ModelMetrics => L<Paws::SageMaker::ModelMetrics>

A structure that contains model metrics reports.



=head2 ModelPackageDescription => Str

A description of the model package.



=head2 ModelPackageGroupName => Str

The name or Amazon Resource Name (ARN) of the model package group that
this model version belongs to.

This parameter is required for versioned models, and does not apply to
unversioned models.



=head2 ModelPackageName => Str

The name of the model package. The name must have 1 to 63 characters.
Valid characters are a-z, A-Z, 0-9, and - (hyphen).

This parameter is required for unversioned models. It is not applicable
to versioned models.



=head2 SamplePayloadUrl => Str

The Amazon Simple Storage Service (Amazon S3) path where the sample
payload is stored. This path must point to a single gzip compressed tar
archive (.tar.gz suffix). This archive can hold multiple files that are
all equally used in the load test. Each file in the archive must
satisfy the size constraints of the InvokeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpoint.html#API_runtime_InvokeEndpoint_RequestSyntax)
call.



=head2 SecurityConfig => L<Paws::SageMaker::ModelPackageSecurityConfig>

The KMS Key ID (C<KMSKeyId>) used for encryption of model package
information.



=head2 SkipModelValidation => Str

Indicates if you want to skip model validation.

Valid values are: C<"All">, C<"None">

=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.



=head2 SourceUri => Str

The URI of the source for the model package. If you want to clone a
model package, set it to the model package Amazon Resource Name (ARN).
If you want to register a model, set it to the model ARN.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of key value pairs associated with the model. For more
information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference Guide>.

If you supply C<ModelPackageGroupName>, your model package belongs to
the model group you specify and uses the tags associated with the model
group. In this case, you cannot supply a C<tag> argument.



=head2 Task => Str

The machine learning task your model package accomplishes. Common
machine learning tasks include object detection and image
classification. The following tasks are supported by Inference
Recommender: C<"IMAGE_CLASSIFICATION"> | C<"OBJECT_DETECTION"> |
C<"TEXT_GENERATION"> |C<"IMAGE_SEGMENTATION"> | C<"FILL_MASK"> |
C<"CLASSIFICATION"> | C<"REGRESSION"> | C<"OTHER">.

Specify "OTHER" if none of the tasks listed fit your use case.



=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Specifies configurations for one or more transform jobs that SageMaker
runs to test the model package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

