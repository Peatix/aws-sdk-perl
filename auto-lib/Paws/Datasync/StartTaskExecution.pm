
package Paws::Datasync::StartTaskExecution;
  use Moose;
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Includes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has ManifestConfig => (is => 'ro', isa => 'Paws::Datasync::ManifestConfig');
  has OverrideOptions => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);
  has TaskReportConfig => (is => 'ro', isa => 'Paws::Datasync::TaskReportConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTaskExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::StartTaskExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StartTaskExecution - Arguments for method StartTaskExecution on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTaskExecution on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method StartTaskExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTaskExecution.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $StartTaskExecutionResponse = $datasync->StartTaskExecution(
      TaskArn  => 'MyTaskArn',
      Excludes => [
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
      OverrideOptions => {
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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
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
    my $TaskExecutionArn = $StartTaskExecutionResponse->TaskExecutionArn;

    # Returns a L<Paws::Datasync::StartTaskExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/StartTaskExecution>

=head1 ATTRIBUTES


=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies a list of filter rules that determines which files to exclude
from a task. The list contains a single filter string that consists of
the patterns to exclude. The patterns are delimited by "|" (that is, a
pipe), for example, C<"/folder1|/folder2">.



=head2 Includes => ArrayRef[L<Paws::Datasync::FilterRule>]

Specifies a list of filter rules that determines which files to include
when running a task. The pattern should contain a single filter string
that consists of the patterns to include. The patterns are delimited by
"|" (that is, a pipe), for example, C<"/folder1|/folder2">.



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

To remove a manifest configuration, specify this parameter with an
empty value.



=head2 OverrideOptions => L<Paws::Datasync::Options>





=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies the tags that you want to apply to the Amazon Resource Name
(ARN) representing the task execution.

I<Tags> are key-value pairs that help you manage, filter, and search
for your DataSync resources.



=head2 B<REQUIRED> TaskArn => Str

Specifies the Amazon Resource Name (ARN) of the task that you want to
start.



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

To remove a task report configuration, specify this parameter as empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTaskExecution in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

