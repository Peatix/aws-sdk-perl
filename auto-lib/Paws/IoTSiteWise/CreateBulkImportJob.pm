
package Paws::IoTSiteWise::CreateBulkImportJob;
  use Moose;
  has AdaptiveIngestion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'adaptiveIngestion');
  has DeleteFilesAfterImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleteFilesAfterImport');
  has ErrorReportLocation => (is => 'ro', isa => 'Paws::IoTSiteWise::ErrorReportLocation', traits => ['NameInRequest'], request_name => 'errorReportLocation', required => 1);
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::File]', traits => ['NameInRequest'], request_name => 'files', required => 1);
  has JobConfiguration => (is => 'ro', isa => 'Paws::IoTSiteWise::JobConfiguration', traits => ['NameInRequest'], request_name => 'jobConfiguration', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobRoleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBulkImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateBulkImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateBulkImportJob - Arguments for method CreateBulkImportJob on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBulkImportJob on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateBulkImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBulkImportJob.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateBulkImportJobResponse = $iotsitewise->CreateBulkImportJob(
      ErrorReportLocation => {
        Bucket => 'MyBucket',    # min: 3, max: 63
        Prefix => 'MyString',

      },
      Files => [
        {
          Bucket    => 'MyBucket',    # min: 3, max: 63
          Key       => 'MyString',
          VersionId => 'MyString',
        },
        ...
      ],
      JobConfiguration => {
        FileFormat => {
          Csv => {
            ColumnNames => [
              'ALIAS',
              ... # values: ALIAS, ASSET_ID, PROPERTY_ID, DATA_TYPE, TIMESTAMP_SECONDS, TIMESTAMP_NANO_OFFSET, QUALITY, VALUE
            ],

          },    # OPTIONAL
          Parquet => {

          },    # OPTIONAL
        },

      },
      JobName                => 'MyName',
      JobRoleArn             => 'MyARN',
      AdaptiveIngestion      => 1,          # OPTIONAL
      DeleteFilesAfterImport => 1,          # OPTIONAL
    );

    # Results:
    my $JobId     = $CreateBulkImportJobResponse->JobId;
    my $JobName   = $CreateBulkImportJobResponse->JobName;
    my $JobStatus = $CreateBulkImportJobResponse->JobStatus;

    # Returns a L<Paws::IoTSiteWise::CreateBulkImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateBulkImportJob>

=head1 ATTRIBUTES


=head2 AdaptiveIngestion => Bool

If set to true, ingest new data into IoT SiteWise storage. Measurements
with notifications, metrics and transforms are computed. If set to
false, historical data is ingested into IoT SiteWise as is.



=head2 DeleteFilesAfterImport => Bool

If set to true, your data files is deleted from S3, after ingestion
into IoT SiteWise storage.



=head2 B<REQUIRED> ErrorReportLocation => L<Paws::IoTSiteWise::ErrorReportLocation>

The Amazon S3 destination where errors associated with the job creation
request are saved.



=head2 B<REQUIRED> Files => ArrayRef[L<Paws::IoTSiteWise::File>]

The files in the specified Amazon S3 bucket that contain your data.



=head2 B<REQUIRED> JobConfiguration => L<Paws::IoTSiteWise::JobConfiguration>

Contains the configuration information of a job, such as the file
format used to save data in Amazon S3.



=head2 B<REQUIRED> JobName => Str

The unique name that helps identify the job request.



=head2 B<REQUIRED> JobRoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the IAM role that allows IoT SiteWise to read Amazon S3 data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBulkImportJob in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

