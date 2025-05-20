
package Paws::Datasync::DescribeTaskExecutionResponse;
  use Moose;
  has BytesCompressed => (is => 'ro', isa => 'Int');
  has BytesTransferred => (is => 'ro', isa => 'Int');
  has BytesWritten => (is => 'ro', isa => 'Int');
  has EstimatedBytesToTransfer => (is => 'ro', isa => 'Int');
  has EstimatedFilesToDelete => (is => 'ro', isa => 'Int');
  has EstimatedFilesToTransfer => (is => 'ro', isa => 'Int');
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has FilesDeleted => (is => 'ro', isa => 'Int');
  has FilesFailed => (is => 'ro', isa => 'Paws::Datasync::TaskExecutionFilesFailedDetail');
  has FilesListed => (is => 'ro', isa => 'Paws::Datasync::TaskExecutionFilesListedDetail');
  has FilesPrepared => (is => 'ro', isa => 'Int');
  has FilesSkipped => (is => 'ro', isa => 'Int');
  has FilesTransferred => (is => 'ro', isa => 'Int');
  has FilesVerified => (is => 'ro', isa => 'Int');
  has Includes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has ManifestConfig => (is => 'ro', isa => 'Paws::Datasync::ManifestConfig');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has ReportResult => (is => 'ro', isa => 'Paws::Datasync::ReportResult');
  has Result => (is => 'ro', isa => 'Paws::Datasync::TaskExecutionResultDetail');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskExecutionArn => (is => 'ro', isa => 'Str');
  has TaskMode => (is => 'ro', isa => 'Str');
  has TaskReportConfig => (is => 'ro', isa => 'Paws::Datasync::TaskReportConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskExecutionResponse

=head1 ATTRIBUTES


=head2 BytesCompressed => Int

The number of physical bytes that DataSync transfers over the network
after compression (if compression is possible). This number is
typically less than BytesTransferred
(https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeTaskExecution.html#DataSync-DescribeTaskExecution-response-BytesTransferred)
unless the data isn't compressible.


=head2 BytesTransferred => Int

The number of bytes that DataSync sends to the network before
compression (if compression is possible). For the number of bytes
transferred over the network, see BytesCompressed
(https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeTaskExecution.html#DataSync-DescribeTaskExecution-response-BytesCompressed).


=head2 BytesWritten => Int

The number of logical bytes that DataSync actually writes to the
destination location.


=head2 EstimatedBytesToTransfer => Int

The number of logical bytes that DataSync expects to write to the
destination location.


=head2 EstimatedFilesToDelete => Int

The number of files, objects, and directories that DataSync expects to
delete in your destination location. If you don't configure your task
to delete data in the destination that isn't in the source
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html),
the value is always C<0>.


=head2 EstimatedFilesToTransfer => Int

The number of files, objects, and directories that DataSync expects to
transfer over the network. This value is calculated while DataSync
prepares
(https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses)
the transfer.

How this gets calculated depends primarily on your taskE<rsquo>s
transfer mode
(https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-TransferMode)
configuration:

=over

=item *

If C<TranserMode> is set to C<CHANGED> - The calculation is based on
comparing the content of the source and destination locations and
determining the difference that needs to be transferred. The difference
can include:

=over

=item *

Anything that's added or modified at the source location.

=item *

Anything that's in both locations and modified at the destination after
an initial transfer (unless OverwriteMode
(https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-OverwriteMode)
is set to C<NEVER>).

=item *

B<(Basic task mode only)> The number of items that DataSync expects to
delete (if PreserveDeletedFiles
(https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-PreserveDeletedFiles)
is set to C<REMOVE>).

=back

=item *

If C<TranserMode> is set to C<ALL> - The calculation is based only on
the items that DataSync finds at the source location.

=back



=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

A list of filter rules that exclude specific data during your transfer.
For more information and examples, see Filtering data transferred by
DataSync
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).


=head2 FilesDeleted => Int

The number of files, objects, and directories that DataSync actually
deletes in your destination location. If you don't configure your task
to delete data in the destination that isn't in the source
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html),
the value is always C<0>.


=head2 FilesFailed => L<Paws::Datasync::TaskExecutionFilesFailedDetail>

The number of objects that DataSync fails to prepare, transfer, verify,
and delete during your task execution.

Applies only to Enhanced mode tasks
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html).


=head2 FilesListed => L<Paws::Datasync::TaskExecutionFilesListedDetail>

The number of objects that DataSync finds at your locations.

Applies only to Enhanced mode tasks
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html).


=head2 FilesPrepared => Int

The number of objects that DataSync will attempt to transfer after
comparing your source and destination locations.

Applies only to Enhanced mode tasks
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html).

This counter isn't applicable if you configure your task to transfer
all data
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html#task-option-transfer-mode).
In that scenario, DataSync copies everything from the source to the
destination without comparing differences between the locations.


=head2 FilesSkipped => Int

The number of files, objects, and directories that DataSync skips
during your transfer.


=head2 FilesTransferred => Int

The number of files, objects, and directories that DataSync actually
transfers over the network. This value is updated periodically during
your task execution when something is read from the source and sent
over the network.

If DataSync fails to transfer something, this value can be less than
C<EstimatedFilesToTransfer>. In some cases, this value can also be
greater than C<EstimatedFilesToTransfer>. This element is
implementation-specific for some location types, so don't use it as an
exact indication of what's transferring or to monitor your task
execution.


=head2 FilesVerified => Int

The number of files, objects, and directories that DataSync verifies
during your transfer.

When you configure your task to verify only the data that's transferred
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-data-verification-options.html),
DataSync doesn't verify directories in some situations or files that
fail to transfer.


=head2 Includes => ArrayRef[L<Paws::Datasync::FilterRule>]

A list of filter rules that include specific data during your transfer.
For more information and examples, see Filtering data transferred by
DataSync
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).


=head2 ManifestConfig => L<Paws::Datasync::ManifestConfig>

The configuration of the manifest that lists the files or objects to
transfer. For more information, see Specifying what DataSync transfers
by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).


=head2 Options => L<Paws::Datasync::Options>




=head2 ReportResult => L<Paws::Datasync::ReportResult>

Indicates whether DataSync generated a complete task report
(https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html)
for your transfer.


=head2 Result => L<Paws::Datasync::TaskExecutionResultDetail>

The result of the task execution.


=head2 StartTime => Str

The time when the task execution started.


=head2 Status => Str

The status of the task execution.

Valid values are: C<"QUEUED">, C<"CANCELLING">, C<"LAUNCHING">, C<"PREPARING">, C<"TRANSFERRING">, C<"VERIFYING">, C<"SUCCESS">, C<"ERROR">
=head2 TaskExecutionArn => Str

The ARN of the task execution that you wanted information about.
C<TaskExecutionArn> is hierarchical and includes C<TaskArn> for the
task that was executed.

For example, a C<TaskExecution> value with the ARN
C<arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b>
executed the task with the ARN
C<arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2>.


=head2 TaskMode => Str

The task mode that you're using. For more information, see Choosing a
task mode for your data transfer
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html).

Valid values are: C<"BASIC">, C<"ENHANCED">
=head2 TaskReportConfig => L<Paws::Datasync::TaskReportConfig>

The configuration of your task report, which provides detailed
information about for your DataSync transfer. For more information, see
Creating a task report
(https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html).


=head2 _request_id => Str


=cut

1;