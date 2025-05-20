
package Paws::Datasync::CreateTask;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Includes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has ManifestConfig => (is => 'ro', isa => 'Paws::Datasync::ManifestConfig');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has SourceLocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has TaskMode => (is => 'ro', isa => 'Str');
  has TaskReportConfig => (is => 'ro', isa => 'Paws::Datasync::TaskReportConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateTask - Arguments for method CreateTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateTaskResponse = $datasync->CreateTask(
      DestinationLocationArn => 'MyLocationArn',
      SourceLocationArn      => 'MyLocationArn',
      CloudWatchLogGroupArn  => 'MyLogGroupArn',    # OPTIONAL
      Excludes               => [
        {
          FilterType =>
            'SIMPLE_PATTERN',    # values: SIMPLE_PATTERNmax: 128; OPTIONAL
          Value => 'MyFilterValue',    # max: 102400; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Includes => [
        {
          FilterType =>
            'SIMPLE_PATTERN',    # values: SIMPLE_PATTERNmax: 128; OPTIONAL
          Value => 'MyFilterValue',    # max: 102400; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ManifestConfig => {
        Action => 'TRANSFER',    # values: TRANSFER; OPTIONAL
        Format => 'CSV',         # values: CSV; OPTIONAL
        Source => {
          S3 => {
            BucketAccessRoleArn     => 'MyIamRoleArn',        # max: 2048
            ManifestObjectPath      => 'MyS3Subdirectory',    # max: 4096
            S3BucketArn             => 'MyS3BucketArn',       # max: 268
            ManifestObjectVersionId =>
              'MyS3ObjectVersionId',    # min: 1, max: 100; OPTIONAL
          },

        },    # OPTIONAL
      },    # OPTIONAL
      Name    => 'MyTagValue',    # OPTIONAL
      Options => {
        Atime          => 'NONE',    # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,         # min: -1; OPTIONAL
        Gid      => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        LogLevel => 'OFF',     # values: OFF, BASIC, TRANSFER; OPTIONAL
        Mtime    => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        ObjectTags           => 'PRESERVE', # values: PRESERVE, NONE; OPTIONAL
        OverwriteMode        => 'ALWAYS',   # values: ALWAYS, NEVER; OPTIONAL
        PosixPermissions     => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        SecurityDescriptorCopyFlags =>
          'NONE',    # values: NONE, OWNER_DACL, OWNER_DACL_SACL; OPTIONAL
        TaskQueueing => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        TransferMode => 'CHANGED',    # values: CHANGED, ALL; OPTIONAL
        Uid          => 'NONE',  # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode   => 'POINT_IN_TIME_CONSISTENT'
        , # values: POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE; OPTIONAL
      },    # OPTIONAL
      Schedule => {
        ScheduleExpression => 'MyScheduleExpressionCron',    # max: 256
        Status             => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256
        },
        ...
      ],    # OPTIONAL
      TaskMode         => 'BASIC',    # OPTIONAL
      TaskReportConfig => {
        Destination => {
          S3 => {
            BucketAccessRoleArn => 'MyIamRoleArn',        # max: 2048
            S3BucketArn         => 'MyS3BucketArn',       # max: 268
            Subdirectory        => 'MyS3Subdirectory',    # max: 4096
          },    # OPTIONAL
        },    # OPTIONAL
        ObjectVersionIds => 'INCLUDE',    # values: INCLUDE, NONE; OPTIONAL
        OutputType => 'SUMMARY_ONLY', # values: SUMMARY_ONLY, STANDARD; OPTIONAL
        Overrides  => {
          Deleted => {
            ReportLevel => 'ERRORS_ONLY'
            ,    # values: ERRORS_ONLY, SUCCESSES_AND_ERRORS; OPTIONAL
          },    # OPTIONAL
          Skipped => {
            ReportLevel => 'ERRORS_ONLY'
            ,    # values: ERRORS_ONLY, SUCCESSES_AND_ERRORS; OPTIONAL
          },    # OPTIONAL
          Transferred => {
            ReportLevel => 'ERRORS_ONLY'
            ,    # values: ERRORS_ONLY, SUCCESSES_AND_ERRORS; OPTIONAL
          },    # OPTIONAL
          Verified => {
            ReportLevel => 'ERRORS_ONLY'
            ,    # values: ERRORS_ONLY, SUCCESSES_AND_ERRORS; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ReportLevel =>
          'ERRORS_ONLY',   # values: ERRORS_ONLY, SUCCESSES_AND_ERRORS; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TaskArn = $CreateTaskResponse->TaskArn;

    # Returns a L<Paws::Datasync::CreateTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateTask>

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
group for monitoring your task.

For Enhanced mode tasks, you don't need to specify anything. DataSync
automatically sends logs to a CloudWatch log group named
C</aws/datasync>.



=head2 B<REQUIRED> DestinationLocationArn => Str

Specifies the ARN of your transfer's destination location.



=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies exclude filters that define the files, objects, and folders
in your source location that you don't want DataSync to transfer. For
more information and examples, see Specifying what DataSync transfers
by using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).



=head2 Includes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies include filters that define the files, objects, and folders
in your source location that you want DataSync to transfer. For more
information and examples, see Specifying what DataSync transfers by
using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).



=head2 ManifestConfig => L<Paws::Datasync::ManifestConfig>

Configures a manifest, which is a list of files or objects that you
want DataSync to transfer. For more information and configuration
examples, see Specifying what DataSync transfers by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).

When using this parameter, your caller identity (the role that you're
using DataSync with) must have the C<iam:PassRole> permission. The
AWSDataSyncFullAccess
(https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess)
policy includes this permission.



=head2 Name => Str

Specifies the name of your task.



=head2 Options => L<Paws::Datasync::Options>

Specifies your task's settings, such as preserving file metadata,
verifying data integrity, among other options.



=head2 Schedule => L<Paws::Datasync::TaskSchedule>

Specifies a schedule for when you want your task to run. For more
information, see Scheduling your task
(https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html).



=head2 B<REQUIRED> SourceLocationArn => Str

Specifies the ARN of your transfer's source location.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies the tags that you want to apply to your task.

I<Tags> are key-value pairs that help you manage, filter, and search
for your DataSync resources.



=head2 TaskMode => Str

Specifies one of the following task modes for your data transfer:

=over

=item *

C<ENHANCED> - Transfer virtually unlimited numbers of objects with
higher performance than Basic mode. Enhanced mode tasks optimize the
data transfer process by listing, preparing, transferring, and
verifying data in parallel. Enhanced mode is currently available for
transfers between Amazon S3 locations.

To create an Enhanced mode task, the IAM role that you use to call the
C<CreateTask> operation must have the C<iam:CreateServiceLinkedRole>
permission.

=item *

C<BASIC> (default) - Transfer files or objects between Amazon Web
Services storage and all other supported DataSync locations. Basic mode
tasks are subject to quotas
(https://docs.aws.amazon.com/datasync/latest/userguide/datasync-limits.html)
on the number of files, objects, and directories in a dataset. Basic
mode sequentially prepares, transfers, and verifies data, making it
slower than Enhanced mode for most workloads.

=back

For more information, see Understanding task mode differences
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences).

Valid values are: C<"BASIC">, C<"ENHANCED">

=head2 TaskReportConfig => L<Paws::Datasync::TaskReportConfig>

Specifies how you want to configure a task report, which provides
detailed information about your DataSync transfer. For more
information, see Monitoring your DataSync transfers with task reports
(https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html).

When using this parameter, your caller identity (the role that you're
using DataSync with) must have the C<iam:PassRole> permission. The
AWSDataSyncFullAccess
(https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess)
policy includes this permission.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

