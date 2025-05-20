
package Paws::Datasync::UpdateTask;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Includes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has ManifestConfig => (is => 'ro', isa => 'Paws::Datasync::ManifestConfig');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);
  has TaskReportConfig => (is => 'ro', isa => 'Paws::Datasync::TaskReportConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateTask - Arguments for method UpdateTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateTaskResponse = $datasync->UpdateTask(
      TaskArn               => 'MyTaskArn',
      CloudWatchLogGroupArn => 'MyLogGroupArn',    # OPTIONAL
      Excludes              => [
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

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateTask>

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
group for monitoring your task.

For Enhanced mode tasks, you must use C</aws/datasync> as your log
group name. For example:

C<arn:aws:logs:us-east-1:111222333444:log-group:/aws/datasync:*>

For more information, see Monitoring data transfers with CloudWatch
Logs
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-logging.html).



=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies exclude filters that define the files, objects, and folders
in your source location that you don't want DataSync to transfer. For
more information and examples, see Specifying what DataSync transfers
by using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).



=head2 Includes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies include filters define the files, objects, and folders in
your source location that you want DataSync to transfer. For more
information and examples, see Specifying what DataSync transfers by
using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).



=head2 ManifestConfig => L<Paws::Datasync::ManifestConfig>

Configures a manifest, which is a list of files or objects that you
want DataSync to transfer. For more information and configuration
examples, see Specifying what DataSync transfers by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).

When using this parameter, your caller identity (the IAM role that
you're using DataSync with) must have the C<iam:PassRole> permission.
The AWSDataSyncFullAccess
(https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess)
policy includes this permission.

To remove a manifest configuration, specify this parameter as empty.



=head2 Name => Str

Specifies the name of your task.



=head2 Options => L<Paws::Datasync::Options>





=head2 Schedule => L<Paws::Datasync::TaskSchedule>

Specifies a schedule for when you want your task to run. For more
information, see Scheduling your task
(https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html).



=head2 B<REQUIRED> TaskArn => Str

Specifies the ARN of the task that you want to update.



=head2 TaskReportConfig => L<Paws::Datasync::TaskReportConfig>

Specifies how you want to configure a task report, which provides
detailed information about your DataSync transfer. For more
information, see Monitoring your DataSync transfers with task reports
(https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html).

When using this parameter, your caller identity (the IAM role that
you're using DataSync with) must have the C<iam:PassRole> permission.
The AWSDataSyncFullAccess
(https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess)
policy includes this permission.

To remove a task report configuration, specify this parameter as empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

