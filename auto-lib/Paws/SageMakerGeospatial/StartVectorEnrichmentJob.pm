
package Paws::SageMakerGeospatial::StartVectorEnrichmentJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::VectorEnrichmentJobInputConfig', required => 1);
  has JobConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::VectorEnrichmentJobConfig', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartVectorEnrichmentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vector-enrichment-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::StartVectorEnrichmentJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::StartVectorEnrichmentJob - Arguments for method StartVectorEnrichmentJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartVectorEnrichmentJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method StartVectorEnrichmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartVectorEnrichmentJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $StartVectorEnrichmentJobOutput =
      $sagemaker -geospatial->StartVectorEnrichmentJob(
      ExecutionRoleArn => 'MyExecutionRoleArn',
      InputConfig      => {
        DataSourceConfig => {
          S3Data => {
            S3Uri    => 'MyS3Uri',
            KmsKeyId => 'MyKmsKey',    # max: 2048; OPTIONAL
          },    # OPTIONAL
        },
        DocumentType => 'CSV',    # values: CSV

      },
      JobConfig => {
        MapMatchingConfig => {
          IdAttributeName        => 'MyString',
          TimestampAttributeName => 'MyString',
          XAttributeName         => 'MyString',
          YAttributeName         => 'MyString',

        },                        # OPTIONAL
        ReverseGeocodingConfig => {
          XAttributeName => 'MyString',
          YAttributeName => 'MyString',

        },                        # OPTIONAL
      },
      Name        => 'MyStartVectorEnrichmentJobInputNameString',
      ClientToken =>
        'MyStartVectorEnrichmentJobInputClientTokenString',    # OPTIONAL
      KmsKeyId => 'MyKmsKey',                                  # OPTIONAL
      Tags     => { 'MyString' => 'MyString', },               # OPTIONAL
      );

    # Results:
    my $Arn               = $StartVectorEnrichmentJobOutput->Arn;
    my $CreationTime      = $StartVectorEnrichmentJobOutput->CreationTime;
    my $DurationInSeconds = $StartVectorEnrichmentJobOutput->DurationInSeconds;
    my $ExecutionRoleArn  = $StartVectorEnrichmentJobOutput->ExecutionRoleArn;
    my $InputConfig       = $StartVectorEnrichmentJobOutput->InputConfig;
    my $JobConfig         = $StartVectorEnrichmentJobOutput->JobConfig;
    my $KmsKeyId          = $StartVectorEnrichmentJobOutput->KmsKeyId;
    my $Name              = $StartVectorEnrichmentJobOutput->Name;
    my $Status            = $StartVectorEnrichmentJobOutput->Status;
    my $Tags              = $StartVectorEnrichmentJobOutput->Tags;
    my $Type              = $StartVectorEnrichmentJobOutput->Type;

# Returns a L<Paws::SageMakerGeospatial::StartVectorEnrichmentJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/StartVectorEnrichmentJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.



=head2 B<REQUIRED> InputConfig => L<Paws::SageMakerGeospatial::VectorEnrichmentJobInputConfig>

Input configuration information for the Vector Enrichment job.



=head2 B<REQUIRED> JobConfig => L<Paws::SageMakerGeospatial::VectorEnrichmentJobConfig>

An object containing information about the job configuration.



=head2 KmsKeyId => Str

The Key Management Service key ID for server-side encryption.



=head2 B<REQUIRED> Name => Str

The name of the Vector Enrichment job.



=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartVectorEnrichmentJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

