
package Paws::Rekognition::CreateProjectVersion;
  use Moose;
  has FeatureConfig => (is => 'ro', isa => 'Paws::Rekognition::CustomizationFeatureConfig');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::OutputConfig', required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');
  has TestingData => (is => 'ro', isa => 'Paws::Rekognition::TestingData');
  has TrainingData => (is => 'ro', isa => 'Paws::Rekognition::TrainingData');
  has VersionDescription => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateProjectVersion - Arguments for method CreateProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateProjectVersionResponse = $rekognition->CreateProjectVersion(
      OutputConfig => {
        S3Bucket    => 'MyS3Bucket',       # min: 3, max: 255; OPTIONAL
        S3KeyPrefix => 'MyS3KeyPrefix',    # max: 1024; OPTIONAL
      },
      ProjectArn    => 'MyProjectArn',
      VersionName   => 'MyVersionName',
      FeatureConfig => {
        ContentModeration => {
          ConfidenceThreshold => 1.0,      # max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      KmsKeyId => 'MyKmsKeyId',    # OPTIONAL
      Tags     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TestingData => {
        Assets => [
          {
            GroundTruthManifest => {
              S3Object => {
                Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
                Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
                Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        AutoCreate => 1,    # OPTIONAL
      },    # OPTIONAL
      TrainingData => {
        Assets => [
          {
            GroundTruthManifest => {
              S3Object => {
                Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
                Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
                Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $ProjectVersionArn = $CreateProjectVersionResponse->ProjectVersionArn;

    # Returns a L<Paws::Rekognition::CreateProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateProjectVersion>

=head1 ATTRIBUTES


=head2 FeatureConfig => L<Paws::Rekognition::CustomizationFeatureConfig>

Feature-specific configuration of the training job. If the job
configuration does not match the feature type associated with the
project, an InvalidParameterException is returned.



=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
You can supply the Amazon Resource Name (ARN) of your KMS key, the ID
of your KMS key, an alias for your KMS key, or an alias ARN. The key is
used to encrypt training images, test images, and manifest files copied
into the service for the project version. Your source images are
unaffected. The key is also used to encrypt training results and
manifest files written to the output Amazon S3 bucket
(C<OutputConfig>).

If you choose to use your own KMS key, you need the following
permissions on the KMS key.

=over

=item *

kms:CreateGrant

=item *

kms:DescribeKey

=item *

kms:GenerateDataKey

=item *

kms:Decrypt

=back

If you don't specify a value for C<KmsKeyId>, images copied into the
service are encrypted using a key that AWS owns and manages.



=head2 B<REQUIRED> OutputConfig => L<Paws::Rekognition::OutputConfig>

The Amazon S3 bucket location to store the results of training. The
bucket can be any S3 bucket in your AWS account. You need
C<s3:PutObject> permission on the bucket.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the Amazon Rekognition project that will manage the project
version you want to train.



=head2 Tags => L<Paws::Rekognition::TagMap>

A set of tags (key-value pairs) that you want to attach to the project
version.



=head2 TestingData => L<Paws::Rekognition::TestingData>

Specifies an external manifest that the service uses to test the
project version. If you specify C<TestingData> you must also specify
C<TrainingData>. The project must not have any associated datasets.



=head2 TrainingData => L<Paws::Rekognition::TrainingData>

Specifies an external manifest that the services uses to train the
project version. If you specify C<TrainingData> you must also specify
C<TestingData>. The project must not have any associated datasets.



=head2 VersionDescription => Str

A description applied to the project version being created.



=head2 B<REQUIRED> VersionName => Str

A name for the version of the project version. This value must be
unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

