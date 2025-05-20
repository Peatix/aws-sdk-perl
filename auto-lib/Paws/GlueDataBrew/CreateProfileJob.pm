
package Paws::GlueDataBrew::CreateProfileJob;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::GlueDataBrew::ProfileConfiguration');
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has JobSample => (is => 'ro', isa => 'Paws::GlueDataBrew::JobSample');
  has LogSubscription => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::GlueDataBrew::S3Location', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');
  has Timeout => (is => 'ro', isa => 'Int');
  has ValidationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::ValidationConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfileJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileJobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::CreateProfileJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateProfileJob - Arguments for method CreateProfileJob on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfileJob on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method CreateProfileJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfileJob.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $CreateProfileJobResponse = $databrew->CreateProfileJob(
      DatasetName    => 'MyDatasetName',
      Name           => 'MyJobName',
      OutputLocation => {
        Bucket      => 'MyBucket',         # min: 3, max: 63
        BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
        Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
      },
      RoleArn       => 'MyArn',
      Configuration => {
        ColumnStatisticsConfigurations => [
          {
            Statistics => {
              IncludedStatistics => [
                'MyStatistic', ...    # min: 1, max: 128
              ],    # min: 1; OPTIONAL
              Overrides => [
                {
                  Parameters => {
                    'MyParameterName' => 'MyParameterValue'
                    ,    # key: min: 1, max: 128, value: min: 1, max: 32768
                  },
                  Statistic => 'MyStatistic',    # min: 1, max: 128

                },
                ...
              ],    # min: 1; OPTIONAL
            },
            Selectors => [
              {
                Name  => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
                Regex => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
              },
              ...
            ],    # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
        DatasetStatisticsConfiguration => {
          IncludedStatistics => [
            'MyStatistic', ...    # min: 1, max: 128
          ],    # min: 1; OPTIONAL
          Overrides => [
            {
              Parameters => {
                'MyParameterName' => 'MyParameterValue'
                ,    # key: min: 1, max: 128, value: min: 1, max: 32768
              },
              Statistic => 'MyStatistic',    # min: 1, max: 128

            },
            ...
          ],    # min: 1; OPTIONAL
        },
        EntityDetectorConfiguration => {
          EntityTypes => [
            'MyEntityType', ...    # min: 1, max: 128
          ],    # min: 1
          AllowedStatistics => [
            {
              Statistics => [
                'MyStatistic', ...    # min: 1, max: 128
              ],    # min: 1; OPTIONAL

            },
            ...
          ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        ProfileColumns => [
          {
            Name  => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
            Regex => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      EncryptionKeyArn => 'MyEncryptionKeyArn',    # OPTIONAL
      EncryptionMode   => 'SSE-KMS',               # OPTIONAL
      JobSample        => {
        Mode => 'FULL_DATASET',    # values: FULL_DATASET, CUSTOM_ROWS; OPTIONAL
        Size => 1,                 # OPTIONAL
      },    # OPTIONAL
      LogSubscription => 'ENABLE',    # OPTIONAL
      MaxCapacity     => 1,           # OPTIONAL
      MaxRetries      => 1,           # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout                  => 1,    # OPTIONAL
      ValidationConfigurations => [
        {
          RulesetArn     => 'MyArn',        # min: 20, max: 2048
          ValidationMode => 'CHECK_ALL',    # values: CHECK_ALL; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Name = $CreateProfileJobResponse->Name;

    # Returns a L<Paws::GlueDataBrew::CreateProfileJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/CreateProfileJob>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::GlueDataBrew::ProfileConfiguration>

Configuration for profile jobs. Used to select columns, do evaluations,
and override default parameters of evaluations. When configuration is
null, the profile job will run with default settings.



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset that this job is to act upon.



=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of an encryption key that is used to
protect the job.



=head2 EncryptionMode => Str

The encryption mode for the job, which can be one of the following:

=over

=item *

C<SSE-KMS> - C<SSE-KMS> - Server-side encryption with KMS-managed keys.

=item *

C<SSE-S3> - Server-side encryption with keys managed by Amazon S3.

=back


Valid values are: C<"SSE-KMS">, C<"SSE-S3">

=head2 JobSample => L<Paws::GlueDataBrew::JobSample>

Sample configuration for profile jobs only. Determines the number of
rows on which the profile job will be executed. If a JobSample value is
not provided, the default value will be used. The default value is
CUSTOM_ROWS for the mode parameter and 20000 for the size parameter.



=head2 LogSubscription => Str

Enables or disables Amazon CloudWatch logging for the job. If logging
is enabled, CloudWatch writes one log stream for each job run.

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 MaxCapacity => Int

The maximum number of nodes that DataBrew can use when the job
processes data.



=head2 MaxRetries => Int

The maximum number of times to retry the job after a job run fails.



=head2 B<REQUIRED> Name => Str

The name of the job to be created. Valid characters are alphanumeric
(A-Z, a-z, 0-9), hyphen (-), period (.), and space.



=head2 B<REQUIRED> OutputLocation => L<Paws::GlueDataBrew::S3Location>





=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role to be assumed when DataBrew runs the job.



=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags to apply to this job.



=head2 Timeout => Int

The job's timeout in minutes. A job that attempts to run longer than
this timeout period ends with a status of C<TIMEOUT>.



=head2 ValidationConfigurations => ArrayRef[L<Paws::GlueDataBrew::ValidationConfiguration>]

List of validation configurations that are applied to the profile job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfileJob in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

