
package Paws::GlueDataBrew::CreateRecipeJob;
  use Moose;
  has DatabaseOutputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::DatabaseOutput]');
  has DataCatalogOutputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::DataCatalogOutput]');
  has DatasetName => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has LogSubscription => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Output]');
  has ProjectName => (is => 'ro', isa => 'Str');
  has RecipeReference => (is => 'ro', isa => 'Paws::GlueDataBrew::RecipeReference');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecipeJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipeJobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::CreateRecipeJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateRecipeJob - Arguments for method CreateRecipeJob on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecipeJob on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method CreateRecipeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecipeJob.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $CreateRecipeJobResponse = $databrew->CreateRecipeJob(
      Name               => 'MyJobName',
      RoleArn            => 'MyArn',
      DataCatalogOutputs => [
        {
          DatabaseName    => 'MyDatabaseName',    # min: 1, max: 255
          TableName       => 'MyTableName',       # min: 1, max: 255
          CatalogId       => 'MyCatalogId',       # min: 1, max: 255; OPTIONAL
          DatabaseOptions => {
            TableName     => 'MyDatabaseTableName',    # min: 1, max: 255
            TempDirectory => {
              Bucket      => 'MyBucket',         # min: 3, max: 63
              BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
              Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Overwrite => 1,    # OPTIONAL
          S3Options => {
            Location => {
              Bucket      => 'MyBucket',         # min: 3, max: 63
              BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
              Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
            },    # OPTIONAL

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DatabaseOutputs => [
        {
          DatabaseOptions => {
            TableName     => 'MyDatabaseTableName',    # min: 1, max: 255
            TempDirectory => {
              Bucket      => 'MyBucket',         # min: 3, max: 63
              BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
              Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          GlueConnectionName => 'MyGlueConnectionName',    # min: 1, max: 255
          DatabaseOutputMode => 'NEW_TABLE',    # values: NEW_TABLE; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DatasetName      => 'MyDatasetName',         # OPTIONAL
      EncryptionKeyArn => 'MyEncryptionKeyArn',    # OPTIONAL
      EncryptionMode   => 'SSE-KMS',               # OPTIONAL
      LogSubscription  => 'ENABLE',                # OPTIONAL
      MaxCapacity      => 1,                       # OPTIONAL
      MaxRetries       => 1,                       # OPTIONAL
      Outputs          => [
        {
          Location => {
            Bucket      => 'MyBucket',         # min: 3, max: 63
            BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
            Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'GZIP'
          , # values: GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB; OPTIONAL
          Format => 'CSV'
          , # values: CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML, TABLEAUHYPER; OPTIONAL
          FormatOptions => {
            Csv => {
              Delimiter => 'MyDelimiter',    # min: 1, max: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          MaxOutputFiles   => 1,    # min: 1, max: 999; OPTIONAL
          Overwrite        => 1,    # OPTIONAL
          PartitionColumns => [
            'MyColumnName', ...     # min: 1, max: 255
          ],    # max: 200; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ProjectName     => 'MyProjectName',    # OPTIONAL
      RecipeReference => {
        Name          => 'MyRecipeName',       # min: 1, max: 255
        RecipeVersion => 'MyRecipeVersion',    # min: 1, max: 16; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout => 1,    # OPTIONAL
    );

    # Results:
    my $Name = $CreateRecipeJobResponse->Name;

    # Returns a L<Paws::GlueDataBrew::CreateRecipeJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/CreateRecipeJob>

=head1 ATTRIBUTES


=head2 DatabaseOutputs => ArrayRef[L<Paws::GlueDataBrew::DatabaseOutput>]

Represents a list of JDBC database output objects which defines the
output destination for a DataBrew recipe job to write to.



=head2 DataCatalogOutputs => ArrayRef[L<Paws::GlueDataBrew::DataCatalogOutput>]

One or more artifacts that represent the Glue Data Catalog output from
running the job.



=head2 DatasetName => Str

The name of the dataset that this job processes.



=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of an encryption key that is used to
protect the job.



=head2 EncryptionMode => Str

The encryption mode for the job, which can be one of the following:

=over

=item *

C<SSE-KMS> - Server-side encryption with keys managed by KMS.

=item *

C<SSE-S3> - Server-side encryption with keys managed by Amazon S3.

=back


Valid values are: C<"SSE-KMS">, C<"SSE-S3">

=head2 LogSubscription => Str

Enables or disables Amazon CloudWatch logging for the job. If logging
is enabled, CloudWatch writes one log stream for each job run.

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 MaxCapacity => Int

The maximum number of nodes that DataBrew can consume when the job
processes data.



=head2 MaxRetries => Int

The maximum number of times to retry the job after a job run fails.



=head2 B<REQUIRED> Name => Str

A unique name for the job. Valid characters are alphanumeric (A-Z, a-z,
0-9), hyphen (-), period (.), and space.



=head2 Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]

One or more artifacts that represent the output from running the job.



=head2 ProjectName => Str

Either the name of an existing project, or a combination of a recipe
and a dataset to associate with the recipe.



=head2 RecipeReference => L<Paws::GlueDataBrew::RecipeReference>





=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role to be assumed when DataBrew runs the job.



=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags to apply to this job.



=head2 Timeout => Int

The job's timeout in minutes. A job that attempts to run longer than
this timeout period ends with a status of C<TIMEOUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecipeJob in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

