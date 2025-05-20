
package Paws::GameLiftStreams::StartStreamSession;
  use Moose;
  has AdditionalEnvironmentVariables => (is => 'ro', isa => 'Paws::GameLiftStreams::EnvironmentVariables');
  has AdditionalLaunchArgs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectionTimeoutSeconds => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has Locations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SessionLengthSeconds => (is => 'ro', isa => 'Int');
  has SignalRequest => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartStreamSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::StartStreamSessionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::StartStreamSession - Arguments for method StartStreamSession on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartStreamSession on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method StartStreamSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartStreamSession.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $StartStreamSessionOutput = $gameliftstreams->StartStreamSession(
      ApplicationIdentifier          => 'MyIdentifier',
      Identifier                     => 'MyIdentifier',
      Protocol                       => 'WebRTC',
      SignalRequest                  => 'MySignalRequest',
      AdditionalEnvironmentVariables => {
        'MyEnvironmentVariablesKeyString' => 'MyEnvironmentVariablesValueString'
        ,    # key: min: 1, max: 256, value: max: 1024
      },    # OPTIONAL
      AdditionalLaunchArgs     => [ 'MyString', ... ],    # OPTIONAL
      ClientToken              => 'MyClientToken',        # OPTIONAL
      ConnectionTimeoutSeconds => 1,                      # OPTIONAL
      Description              => 'MyDescription',        # OPTIONAL
      Locations                => [
        'MyLocationName', ...                             # min: 1, max: 20
      ],    # OPTIONAL
      SessionLengthSeconds => 1,             # OPTIONAL
      UserId               => 'MyUserId',    # OPTIONAL
    );

    # Results:
    my $AdditionalEnvironmentVariables =
      $StartStreamSessionOutput->AdditionalEnvironmentVariables;
    my $AdditionalLaunchArgs = $StartStreamSessionOutput->AdditionalLaunchArgs;
    my $ApplicationArn       = $StartStreamSessionOutput->ApplicationArn;
    my $Arn                  = $StartStreamSessionOutput->Arn;
    my $ConnectionTimeoutSeconds =
      $StartStreamSessionOutput->ConnectionTimeoutSeconds;
    my $CreatedAt            = $StartStreamSessionOutput->CreatedAt;
    my $Description          = $StartStreamSessionOutput->Description;
    my $ExportFilesMetadata  = $StartStreamSessionOutput->ExportFilesMetadata;
    my $LastUpdatedAt        = $StartStreamSessionOutput->LastUpdatedAt;
    my $Location             = $StartStreamSessionOutput->Location;
    my $LogFileLocationUri   = $StartStreamSessionOutput->LogFileLocationUri;
    my $Protocol             = $StartStreamSessionOutput->Protocol;
    my $SessionLengthSeconds = $StartStreamSessionOutput->SessionLengthSeconds;
    my $SignalRequest        = $StartStreamSessionOutput->SignalRequest;
    my $SignalResponse       = $StartStreamSessionOutput->SignalResponse;
    my $Status               = $StartStreamSessionOutput->Status;
    my $StatusReason         = $StartStreamSessionOutput->StatusReason;
    my $StreamGroupId        = $StartStreamSessionOutput->StreamGroupId;
    my $UserId               = $StartStreamSessionOutput->UserId;
    my $WebSdkProtocolUrl    = $StartStreamSessionOutput->WebSdkProtocolUrl;

    # Returns a L<Paws::GameLiftStreams::StartStreamSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/StartStreamSession>

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



=head2 B<REQUIRED> ApplicationIdentifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the application resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.



=head2 ClientToken => Str

A unique identifier that represents a client request. The request is
idempotent, which ensures that an API request completes only once. When
users send a request, Amazon GameLift Streams automatically populates
this field.



=head2 ConnectionTimeoutSeconds => Int

Length of time (in seconds) that Amazon GameLift Streams should wait
for a client to connect to the stream session. This time span starts
when the stream session reaches C<ACTIVE> status. If no client connects
before the timeout, Amazon GameLift Streams stops the stream session
with status of C<TERMINATED>. Default value is 120.



=head2 Description => Str

A human-readable label for the stream session. You can update this
value later.



=head2 B<REQUIRED> Identifier => Str

The stream group to run this stream session with.

This value is an Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.



=head2 Locations => ArrayRef[Str|Undef]

A list of locations, in order of priority, where you want Amazon
GameLift Streams to start a stream from. Amazon GameLift Streams
selects the location with the next available capacity to start a single
stream session in. If this value is empty, Amazon GameLift Streams
attempts to start a stream session in the primary location.

This value is A set of location names. For example, C<us-east-1>. For a
complete list of locations that Amazon GameLift Streams supports, refer
to Regions and quotas
(https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html)
in the I<Amazon GameLift Streams Developer Guide>.



=head2 B<REQUIRED> Protocol => Str

The data transport protocol to use for the stream session.

Valid values are: C<"WebRTC">

=head2 SessionLengthSeconds => Int

The maximum length of time (in seconds) that Amazon GameLift Streams
keeps the stream session open. At this point, Amazon GameLift Streams
ends the stream session regardless of any existing client connections.
Default value is 43200.



=head2 B<REQUIRED> SignalRequest => Str

A WebRTC ICE offer string to use when initializing a WebRTC connection.
The offer is a very long JSON string. Provide the string as a text
value in quotes.



=head2 UserId => Str

An opaque, unique identifier for an end-user, defined by the developer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartStreamSession in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

