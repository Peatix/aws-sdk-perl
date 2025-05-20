
package Paws::IVS::CreateChannel;
  use Moose;
  has Authorized => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'authorized');
  has ContainerFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerFormat');
  has InsecureIngest => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'insecureIngest');
  has LatencyMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latencyMode');
  has MultitrackInputConfiguration => (is => 'ro', isa => 'Paws::IVS::MultitrackInputConfiguration', traits => ['NameInRequest'], request_name => 'multitrackInputConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PlaybackRestrictionPolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'playbackRestrictionPolicyArn');
  has Preset => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preset');
  has RecordingConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recordingConfigurationArn');
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateChannel - Arguments for method CreateChannel on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $CreateChannelResponse = $ivs->CreateChannel(
      Authorized                   => 1,           # OPTIONAL
      ContainerFormat              => 'TS',        # OPTIONAL
      InsecureIngest               => 1,           # OPTIONAL
      LatencyMode                  => 'NORMAL',    # OPTIONAL
      MultitrackInputConfiguration => {
        Enabled           => 1,          # OPTIONAL
        MaximumResolution => 'SD',       # values: SD, HD, FULL_HD; OPTIONAL
        Policy            => 'ALLOW',    # values: ALLOW, REQUIRE; OPTIONAL
      },    # OPTIONAL
      Name                         => 'MyChannelName',    # OPTIONAL
      PlaybackRestrictionPolicyArn =>
        'MyChannelPlaybackRestrictionPolicyArn',          # OPTIONAL
      Preset                    => 'HIGHER_BANDWIDTH_DELIVERY',    # OPTIONAL
      RecordingConfigurationArn =>
        'MyChannelRecordingConfigurationArn',                      # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Type => 'BASIC',    # OPTIONAL
    );

    # Results:
    my $Channel   = $CreateChannelResponse->Channel;
    my $StreamKey = $CreateChannelResponse->StreamKey;

    # Returns a L<Paws::IVS::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/CreateChannel>

=head1 ATTRIBUTES


=head2 Authorized => Bool

Whether the channel is private (enabled for playback authorization).
Default: C<false>.



=head2 ContainerFormat => Str

Indicates which content-packaging format is used (MPEG-TS or fMP4). If
C<multitrackInputConfiguration> is specified and C<enabled> is C<true>,
then C<containerFormat> is required and must be set to
C<FRAGMENTED_MP4>. Otherwise, C<containerFormat> may be set to C<TS> or
C<FRAGMENTED_MP4>. Default: C<TS>.

Valid values are: C<"TS">, C<"FRAGMENTED_MP4">

=head2 InsecureIngest => Bool

Whether the channel allows insecure RTMP and SRT ingest. Default:
C<false>.



=head2 LatencyMode => Str

Channel latency mode. Use C<NORMAL> to broadcast and deliver live video
up to Full HD. Use C<LOW> for near-real-time interaction with viewers.
Default: C<LOW>.

Valid values are: C<"NORMAL">, C<"LOW">

=head2 MultitrackInputConfiguration => L<Paws::IVS::MultitrackInputConfiguration>

Object specifying multitrack input configuration. Default: no
multitrack input configuration is specified.



=head2 Name => Str

Channel name.



=head2 PlaybackRestrictionPolicyArn => Str

Playback-restriction-policy ARN. A valid ARN value here both specifies
the ARN and enables playback restriction. Default: "" (empty string, no
playback restriction policy is applied).



=head2 Preset => Str

Optional transcode preset for the channel. This is selectable only for
C<ADVANCED_HD> and C<ADVANCED_SD> channel types. For those channel
types, the default C<preset> is C<HIGHER_BANDWIDTH_DELIVERY>. For other
channel types (C<BASIC> and C<STANDARD>), C<preset> is the empty string
(C<"">).

Valid values are: C<"HIGHER_BANDWIDTH_DELIVERY">, C<"CONSTRAINED_BANDWIDTH_DELIVERY">

=head2 RecordingConfigurationArn => Str

Recording-configuration ARN. A valid ARN value here both specifies the
ARN and enables recording. Default: "" (empty string, recording is
disabled).



=head2 Tags => L<Paws::IVS::Tags>

Array of 1-50 maps, each of the form C<string:string (key:value)>. See
Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.



=head2 Type => Str

Channel type, which determines the allowable resolution and bitrate.
I<If you exceed the allowable input resolution or bitrate, the stream
probably will disconnect immediately.> Default: C<STANDARD>. For
details, see Channel Types
(https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html).

Valid values are: C<"BASIC">, C<"STANDARD">, C<"ADVANCED_SD">, C<"ADVANCED_HD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

