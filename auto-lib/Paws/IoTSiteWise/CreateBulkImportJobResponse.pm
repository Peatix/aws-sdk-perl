
package Paws::IoTSiteWise::CreateBulkImportJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateBulkImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job.


=head2 B<REQUIRED> JobName => Str

The unique name that helps identify the job request.


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

