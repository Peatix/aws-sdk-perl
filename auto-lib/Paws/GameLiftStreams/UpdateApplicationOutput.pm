
package Paws::GameLiftStreams::UpdateApplicationOutput;
  use Moose;
  has ApplicationLogOutputUri => (is => 'ro', isa => 'Str');
  has ApplicationLogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApplicationSourceUri => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssociatedStreamGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutablePath => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has ReplicationStatuses => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::ReplicationStatus]');
  has RuntimeEnvironment => (is => 'ro', isa => 'Paws::GameLiftStreams::RuntimeEnvironment');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::UpdateApplicationOutput

=head1 ATTRIBUTES


=head2 ApplicationLogOutputUri => Str

An Amazon S3 URI to a bucket where you would like Amazon GameLift
Streams to save application logs. Required if you specify one or more
C<ApplicationLogPaths>.


=head2 ApplicationLogPaths => ArrayRef[Str|Undef]

Locations of log files that your content generates during a stream
session. Amazon GameLift Streams uploads log files to the Amazon S3
bucket that you specify in C<ApplicationLogOutputUri> at the end of a
stream session. To retrieve stored log files, call GetStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html)
and get the C<LogFileLocationUri>.


=head2 ApplicationSourceUri => Str

The original Amazon S3 location of uploaded stream content for the
application.


=head2 B<REQUIRED> Arn => Str

An Amazon Resource Name (ARN) that's assigned to an application
resource and uniquely identifies it across all Amazon Web Services
Regions. Format is C<arn:aws:gameliftstreams:[AWS Region]:[AWS
account]:application/[resource ID]>.


=head2 AssociatedStreamGroups => ArrayRef[Str|Undef]

A set of stream groups that this application is associated with. You
can use any of these stream groups to stream your application.

This value is a set of Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identify stream group resources. Format example:
C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>.


=head2 CreatedAt => Str

A timestamp that indicates when this resource was created. Timestamps
are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 Description => Str

A human-readable label for the application. You can edit this value.


=head2 ExecutablePath => Str

The path and file name of the executable file that launches the content
for streaming.


=head2 Id => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the application resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.


=head2 LastUpdatedAt => Str

A timestamp that indicates when this resource was last updated.
Timestamps are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 ReplicationStatuses => ArrayRef[L<Paws::GameLiftStreams::ReplicationStatus>]

A set of replication statuses for each location.


=head2 RuntimeEnvironment => L<Paws::GameLiftStreams::RuntimeEnvironment>

Configuration settings that identify the operating system for an
application resource. This can also include a compatibility layer and
other drivers.

A runtime environment can be one of the following:

=over

=item *

For Linux applications

=over

=item *

Ubuntu 22.04 LTS (C<Type=UBUNTU, Version=22_04_LTS>)

=back

=item *

For Windows applications

=over

=item *

Microsoft Windows Server 2022 Base (C<Type=WINDOWS, Version=2022>)

=item *

Proton 8.0-5 (C<Type=PROTON, Version=20241007>)

=item *

Proton 8.0-2c (C<Type=PROTON, Version=20230704>)

=back

=back



=head2 Status => Str

The current status of the application resource. Possible statuses
include the following:

=over

=item *

C<INITIALIZED>: Amazon GameLift Streams has received the request and is
initiating the work flow to create an application.

=item *

C<PROCESSING>: The create application work flow is in process. Amazon
GameLift Streams is copying the content and caching for future
deployment in a stream group.

=item *

C<READY>: The application is ready to deploy in a stream group.

=item *

C<ERROR>: An error occurred when setting up the application. See
C<StatusReason> for more information.

=item *

C<DELETING>: Amazon GameLift Streams is in the process of deleting the
application.

=back


Valid values are: C<"INITIALIZED">, C<"PROCESSING">, C<"READY">, C<"DELETING">, C<"ERROR">
=head2 StatusReason => Str

A short description of the status reason when the application is in
C<ERROR> status.

Valid values are: C<"internalError">, C<"accessDenied">
=head2 _request_id => Str


=cut

