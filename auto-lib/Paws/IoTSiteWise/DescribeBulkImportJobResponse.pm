
package Paws::IoTSiteWise::DescribeBulkImportJobResponse;
  use Moose;
  has AdaptiveIngestion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'adaptiveIngestion');
  has DeleteFilesAfterImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleteFilesAfterImport');
  has ErrorReportLocation => (is => 'ro', isa => 'Paws::IoTSiteWise::ErrorReportLocation', traits => ['NameInRequest'], request_name => 'errorReportLocation', required => 1);
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::File]', traits => ['NameInRequest'], request_name => 'files', required => 1);
  has JobConfiguration => (is => 'ro', isa => 'Paws::IoTSiteWise::JobConfiguration', traits => ['NameInRequest'], request_name => 'jobConfiguration', required => 1);
  has JobCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobCreationDate', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has JobLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobLastUpdateDate', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobRoleArn', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeBulkImportJobResponse

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


=head2 B<REQUIRED> JobCreationDate => Str

The date the job was created, in Unix epoch TIME.


=head2 B<REQUIRED> JobId => Str

The ID of the job.


=head2 B<REQUIRED> JobLastUpdateDate => Str

The date the job was last updated, in Unix epoch time.


=head2 B<REQUIRED> JobName => Str

The unique name that helps identify the job request.


=head2 B<REQUIRED> JobRoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the IAM role that allows IoT SiteWise to read Amazon S3 data.


=head2 B<REQUIRED> JobStatus => Str

The status of the bulk import job can be one of following values:

=over

=item *

C<PENDING> E<ndash> IoT SiteWise is waiting for the current bulk import
job to finish.

=item *

C<CANCELLED> E<ndash> The bulk import job has been canceled.

=item *

C<RUNNING> E<ndash> IoT SiteWise is processing your request to import
your data from Amazon S3.

=item *

C<COMPLETED> E<ndash> IoT SiteWise successfully completed your request
to import data from Amazon S3.

=item *

C<FAILED> E<ndash> IoT SiteWise couldn't process your request to import
data from Amazon S3. You can use logs saved in the specified error
report location in Amazon S3 to troubleshoot issues.

=item *

C<COMPLETED_WITH_FAILURES> E<ndash> IoT SiteWise completed your request
to import data from Amazon S3 with errors. You can use logs saved in
the specified error report location in Amazon S3 to troubleshoot
issues.

=back


Valid values are: C<"PENDING">, C<"CANCELLED">, C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"COMPLETED_WITH_FAILURES">
=head2 _request_id => Str


=cut

