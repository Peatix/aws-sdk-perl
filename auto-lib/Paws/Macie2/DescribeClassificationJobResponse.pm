
package Paws::Macie2::DescribeClassificationJobResponse;
  use Moose;
  has AllowListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowListIds');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CustomDataIdentifierIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'customDataIdentifierIds');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InitialRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'initialRun');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus');
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType');
  has LastRunErrorStatus => (is => 'ro', isa => 'Paws::Macie2::LastRunErrorStatus', traits => ['NameInRequest'], request_name => 'lastRunErrorStatus');
  has LastRunTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRunTime');
  has ManagedDataIdentifierIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managedDataIdentifierIds');
  has ManagedDataIdentifierSelector => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedDataIdentifierSelector');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has S3JobDefinition => (is => 'ro', isa => 'Paws::Macie2::S3JobDefinition', traits => ['NameInRequest'], request_name => 's3JobDefinition');
  has SamplingPercentage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'samplingPercentage');
  has ScheduleFrequency => (is => 'ro', isa => 'Paws::Macie2::JobScheduleFrequency', traits => ['NameInRequest'], request_name => 'scheduleFrequency');
  has Statistics => (is => 'ro', isa => 'Paws::Macie2::Statistics', traits => ['NameInRequest'], request_name => 'statistics');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UserPausedDetails => (is => 'ro', isa => 'Paws::Macie2::UserPausedDetails', traits => ['NameInRequest'], request_name => 'userPausedDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DescribeClassificationJobResponse

=head1 ATTRIBUTES


=head2 AllowListIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each allow list that the job is
configured to use when it analyzes data.


=head2 ClientToken => Str

The token that was provided to ensure the idempotency of the request to
create the job.


=head2 CreatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the job
was created.


=head2 CustomDataIdentifierIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each custom data identifier
that the job is configured to use when it analyzes data. This value is
null if the job is configured to use only managed data identifiers to
analyze data.


=head2 Description => Str

The custom description of the job.


=head2 InitialRun => Bool

For a recurring job, specifies whether you configured the job to
analyze all existing, eligible objects immediately after the job was
created (true). If you configured the job to analyze only those objects
that were created or changed after the job was created and before the
job's first scheduled run, this value is false. This value is also
false for a one-time job.


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the job.


=head2 JobId => Str

The unique identifier for the job.


=head2 JobStatus => Str

The current status of the job. Possible values are:

=over

=item *

CANCELLED - You cancelled the job or, if it's a one-time job, you
paused the job and didn't resume it within 30 days.

=item *

COMPLETE - For a one-time job, Amazon Macie finished processing the
data specified for the job. This value doesn't apply to recurring jobs.

=item *

IDLE - For a recurring job, the previous scheduled run is complete and
the next scheduled run is pending. This value doesn't apply to one-time
jobs.

=item *

PAUSED - Macie started running the job but additional processing would
exceed the monthly sensitive data discovery quota for your account or
one or more member accounts that the job analyzes data for.

=item *

RUNNING - For a one-time job, the job is in progress. For a recurring
job, a scheduled run is in progress.

=item *

USER_PAUSED - You paused the job. If you paused the job while it had a
status of RUNNING and you don't resume it within 30 days of pausing it,
the job or job run will expire and be cancelled, depending on the job's
type. To check the expiration date, refer to the
UserPausedDetails.jobExpiresAt property.

=back


Valid values are: C<"RUNNING">, C<"PAUSED">, C<"CANCELLED">, C<"COMPLETE">, C<"IDLE">, C<"USER_PAUSED">
=head2 JobType => Str

The schedule for running the job. Possible values are:

=over

=item *

ONE_TIME - The job runs only once.

=item *

SCHEDULED - The job runs on a daily, weekly, or monthly basis. The
scheduleFrequency property indicates the recurrence pattern for the
job.

=back


Valid values are: C<"ONE_TIME">, C<"SCHEDULED">
=head2 LastRunErrorStatus => L<Paws::Macie2::LastRunErrorStatus>

Specifies whether any account- or bucket-level access errors occurred
when the job ran. For a recurring job, this value indicates the error
status of the job's most recent run.


=head2 LastRunTime => Str

The date and time, in UTC and extended ISO 8601 format, when the job
started. If the job is a recurring job, this value indicates when the
most recent run started or, if the job hasn't run yet, when the job was
created.


=head2 ManagedDataIdentifierIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each managed data identifier
that the job is explicitly configured to include (use) or exclude (not
use) when it analyzes data. Inclusion or exclusion depends on the
managed data identifier selection type specified for the job
(managedDataIdentifierSelector).

This value is null if the job's managed data identifier selection type
is ALL, NONE, or RECOMMENDED.


=head2 ManagedDataIdentifierSelector => Str

The selection type that determines which managed data identifiers the
job uses when it analyzes data. Possible values are:

=over

=item *

ALL - Use all managed data identifiers.

=item *

EXCLUDE - Use all managed data identifiers except the ones specified by
the managedDataIdentifierIds property.

=item *

INCLUDE - Use only the managed data identifiers specified by the
managedDataIdentifierIds property.

=item *

NONE - Don't use any managed data identifiers. Use only custom data
identifiers (customDataIdentifierIds).

=item *

RECOMMENDED (default) - Use the recommended set of managed data
identifiers.

=back

If this value is null, the job uses the recommended set of managed data
identifiers.

If the job is a recurring job and this value is ALL or EXCLUDE, each
job run automatically uses new managed data identifiers that are
released. If this value is null or RECOMMENDED for a recurring job,
each job run uses all the managed data identifiers that are in the
recommended set when the run starts.

To learn about individual managed data identifiers or determine which
ones are in the recommended set, see Using managed data identifiers
(https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html)
or Recommended managed data identifiers
(https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-mdis-recommended.html)
in the I<Amazon Macie User Guide>.

Valid values are: C<"ALL">, C<"EXCLUDE">, C<"INCLUDE">, C<"NONE">, C<"RECOMMENDED">
=head2 Name => Str

The custom name of the job.


=head2 S3JobDefinition => L<Paws::Macie2::S3JobDefinition>

The S3 buckets that contain the objects to analyze, and the scope of
that analysis.


=head2 SamplingPercentage => Int

The sampling depth, as a percentage, that determines the percentage of
eligible objects that the job analyzes.


=head2 ScheduleFrequency => L<Paws::Macie2::JobScheduleFrequency>

The recurrence pattern for running the job. This value is null if the
job is configured to run only once.


=head2 Statistics => L<Paws::Macie2::Statistics>

The number of times that the job has run and processing statistics for
the job's current run.


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies which tags (keys and values)
are associated with the job.


=head2 UserPausedDetails => L<Paws::Macie2::UserPausedDetails>

If the current status of the job is USER_PAUSED, specifies when the job
was paused and when the job or job run will expire and be cancelled if
it isn't resumed. This value is present only if the value for jobStatus
is USER_PAUSED.


=head2 _request_id => Str


=cut

