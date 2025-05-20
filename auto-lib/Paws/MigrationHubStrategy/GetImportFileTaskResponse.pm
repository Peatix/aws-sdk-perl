
package Paws::MigrationHubStrategy::GetImportFileTaskResponse;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completionTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ImportName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importName');
  has InputS3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputS3Bucket');
  has InputS3Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputS3Key');
  has NumberOfRecordsFailed => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecordsFailed');
  has NumberOfRecordsSuccess => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecordsSuccess');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReportS3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReportS3Bucket');
  has StatusReportS3Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReportS3Key');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetImportFileTaskResponse

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The time that the import task completed.


=head2 Id => Str

The import file task C<id> returned in the response of
StartImportFileTask.


=head2 ImportName => Str

The name of the import task given in StartImportFileTask.


=head2 InputS3Bucket => Str

The S3 bucket where import file is located.


=head2 InputS3Key => Str

The Amazon S3 key name of the import file.


=head2 NumberOfRecordsFailed => Int

The number of records that failed to be imported.


=head2 NumberOfRecordsSuccess => Int

The number of records successfully imported.


=head2 StartTime => Str

Start time of the import task.


=head2 Status => Str

Status of import file task.

Valid values are: C<"ImportInProgress">, C<"ImportFailed">, C<"ImportPartialSuccess">, C<"ImportSuccess">, C<"DeleteInProgress">, C<"DeleteFailed">, C<"DeletePartialSuccess">, C<"DeleteSuccess">
=head2 StatusReportS3Bucket => Str

The S3 bucket name for status report of import task.


=head2 StatusReportS3Key => Str

The Amazon S3 key name for status report of import task. The report
contains details about whether each record imported successfully or why
it did not.


=head2 _request_id => Str


=cut

