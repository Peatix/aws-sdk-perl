
package Paws::GameLiftStreams::GetStreamSessionOutput;
  use Moose;
  has AdditionalEnvironmentVariables => (is => 'ro', isa => 'Paws::GameLiftStreams::EnvironmentVariables');
  has AdditionalLaunchArgs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has ConnectionTimeoutSeconds => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExportFilesMetadata => (is => 'ro', isa => 'Paws::GameLiftStreams::ExportFilesMetadata');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has LogFileLocationUri => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SessionLengthSeconds => (is => 'ro', isa => 'Int');
  has SignalRequest => (is => 'ro', isa => 'Str');
  has SignalResponse => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has StreamGroupId => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
  has WebSdkProtocolUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::GetStreamSessionOutput

=head1 ATTRIBUTES


=head2 AdditionalEnvironmentVariables => L<Paws::GameLiftStreams::EnvironmentVariables>

A set of options that you can use to control the stream session runtime
environment, expressed as a set of key-value pairs. You can use this to
configure the application or stream session details. You can also
provide custom environment variables that Amazon GameLift Streams
passes to your game client.

If you want to debug your application with environment variables, we
recommend that you do so in a local environment outside of Amazon
GameLift Streams. For more information, refer to the Compatibility
Guidance in the troubleshooting section of the Developer Guide.

C<AdditionalEnvironmentVariables> and C<AdditionalLaunchArgs> have
similar purposes. C<AdditionalEnvironmentVariables> passes data using
environment variables; while C<AdditionalLaunchArgs> passes data using
command-line arguments.


=head2 AdditionalLaunchArgs => ArrayRef[Str|Undef]

A list of CLI arguments that are sent to the streaming server when a
stream session launches. You can use this to configure the application
or stream session details. You can also provide custom arguments that
Amazon GameLift Streams passes to your game client.

C<AdditionalEnvironmentVariables> and C<AdditionalLaunchArgs> have
similar purposes. C<AdditionalEnvironmentVariables> passes data using
environment variables; while C<AdditionalLaunchArgs> passes data using
command-line arguments.


=head2 ApplicationArn => Str

The application streaming in this session.

This value is an Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identifies the application resource. Format example:
C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>.


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the stream session resource.
When combined with the stream group ARN, this value uniquely identifies
it across all Amazon Web Services Regions. Format is
C<arn:aws:gameliftstreams:[AWS Region]:[AWS
account]:streamsession/[resource ID]>.


=head2 ConnectionTimeoutSeconds => Int

The maximum length of time (in seconds) that Amazon GameLift Streams
keeps the stream session open. At this point, Amazon GameLift Streams
ends the stream session regardless of any existing client connections.


=head2 CreatedAt => Str

A timestamp that indicates when this resource was created. Timestamps
are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 Description => Str

A human-readable label for the stream session. You can update this
value at any time.


=head2 ExportFilesMetadata => L<Paws::GameLiftStreams::ExportFilesMetadata>

Provides details about the stream session's exported files.


=head2 LastUpdatedAt => Str

A timestamp that indicates when this resource was last updated.
Timestamps are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 Location => Str

The location where Amazon GameLift Streams is hosting the stream
session.

A location's name. For example, C<us-east-1>. For a complete list of
locations that Amazon GameLift Streams supports, refer to Regions and
quotas
(https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html)
in the I<Amazon GameLift Streams Developer Guide>.


=head2 LogFileLocationUri => Str

Access location for log files that your content generates during a
stream session. These log files are uploaded to cloud storage location
at the end of a stream session. The Amazon GameLift Streams application
resource defines which log files to upload.


=head2 Protocol => Str

The data transfer protocol in use with the stream session.

Valid values are: C<"WebRTC">
=head2 SessionLengthSeconds => Int

The length of time that Amazon GameLift Streams keeps the game session
open.


=head2 SignalRequest => Str

The WebRTC ICE offer string that a client generates to initiate a
connection to the stream session.


=head2 SignalResponse => Str

The WebRTC answer string that the stream server generates in response
to the C<SignalRequest>.


=head2 Status => Str

The current status of the stream session. A stream session can host
clients when in C<ACTIVE> status.

Valid values are: C<"ACTIVATING">, C<"ACTIVE">, C<"CONNECTED">, C<"PENDING_CLIENT_RECONNECTION">, C<"RECONNECTING">, C<"TERMINATING">, C<"TERMINATED">, C<"ERROR">
=head2 StatusReason => Str

A short description of the reason the stream session is in C<ERROR>
status.

Valid values are: C<"internalError">, C<"invalidSignalRequest">, C<"placementTimeout">, C<"applicationLogS3DestinationError">
=head2 StreamGroupId => Str

The unique identifier for the Amazon GameLift Streams stream group that
is hosting the stream session.


=head2 UserId => Str

An opaque, unique identifier for an end-user, defined by the developer.


=head2 WebSdkProtocolUrl => Str

The URL of an S3 bucket that stores Amazon GameLift Streams WebSDK
files. The URL is used to establish connection with the client.


=head2 _request_id => Str


=cut

