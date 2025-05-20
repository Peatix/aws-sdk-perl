
package Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipeline;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::LiveConnectorSinkConfiguration]', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::LiveConnectorSourceConfiguration]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaLiveConnectorPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-live-connector-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipeline - Arguments for method CreateMediaLiveConnectorPipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaLiveConnectorPipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaLiveConnectorPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaLiveConnectorPipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaLiveConnectorPipelineResponse =
      $media -pipelines-chime->CreateMediaLiveConnectorPipeline(
      Sinks => [
        {
          RTMPConfiguration => {
            Url             => 'MySensitiveString',    # min: 1, max: 1024
            AudioChannels   => 'Stereo',    # values: Stereo, Mono; OPTIONAL
            AudioSampleRate => 'MyAudioSampleRateOption',    # OPTIONAL
          },
          SinkType => 'RTMP',                                # values: RTMP

        },
        ...
      ],
      Sources => [
        {
          ChimeSdkMeetingLiveConnectorConfiguration => {
            Arn     => 'MyArn',                     # min: 1, max: 1024
            MuxType => 'AudioWithCompositedVideo'
            ,    # values: AudioWithCompositedVideo, AudioWithActiveSpeakerVideo
            CompositedVideo => {
              GridViewConfiguration => {
                ContentShareLayout => 'PresenterOnly'
                , # values: PresenterOnly, Horizontal, Vertical, ActiveSpeakerOnly
                ActiveSpeakerOnlyConfiguration => {
                  ActiveSpeakerPosition => 'TopLeft'
                  , # values: TopLeft, TopRight, BottomLeft, BottomRight; OPTIONAL
                },    # OPTIONAL
                CanvasOrientation =>
                  'Landscape',    # values: Landscape, Portrait; OPTIONAL
                HorizontalLayoutConfiguration => {
                  TileAspectRatio => 'MyTileAspectRatio',    # OPTIONAL
                  TileCount       => 1,              # min: 1, max: 10; OPTIONAL
                  TileOrder       => 'JoinSequence'
                  ,    # values: JoinSequence, SpeakerSequence; OPTIONAL
                  TilePosition => 'Top',    # values: Top, Bottom; OPTIONAL
                },    # OPTIONAL
                PresenterOnlyConfiguration => {
                  PresenterPosition => 'TopLeft'
                  , # values: TopLeft, TopRight, BottomLeft, BottomRight; OPTIONAL
                },    # OPTIONAL
                VerticalLayoutConfiguration => {
                  TileAspectRatio => 'MyTileAspectRatio',    # OPTIONAL
                  TileCount       => 1,              # min: 1, max: 10; OPTIONAL
                  TileOrder       => 'JoinSequence'
                  ,    # values: JoinSequence, SpeakerSequence; OPTIONAL
                  TilePosition => 'Left',    # values: Left, Right; OPTIONAL
                },    # OPTIONAL
                VideoAttribute => {
                  BorderColor => 'Black'
                  ,   # values: Black, Blue, Red, Green, White, Yellow; OPTIONAL
                  BorderThickness => 1,        # min: 1, max: 20; OPTIONAL
                  CornerRadius    => 1,        # min: 1, max: 20; OPTIONAL
                  HighlightColor  => 'Black'
                  ,   # values: Black, Blue, Red, Green, White, Yellow; OPTIONAL
                },    # OPTIONAL
              },
              Layout     => 'GridView',    # values: GridView; OPTIONAL
              Resolution => 'HD',          # values: HD, FHD; OPTIONAL
            },    # OPTIONAL
            SourceConfiguration => {
              SelectedVideoStreams => {
                AttendeeIds => [
                  'MyGuidString', ...    # min: 36, max: 36
                ],    # min: 1; OPTIONAL
                ExternalUserIds => [
                  'MyExternalUserIdType', ...    # min: 2, max: 64
                ],    # min: 1; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          SourceType => 'ChimeSdkMeeting',    # values: ChimeSdkMeeting

        },
        ...
      ],
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $MediaLiveConnectorPipeline =
      $CreateMediaLiveConnectorPipelineResponse->MediaLiveConnectorPipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaLiveConnectorPipeline>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The token assigned to the client making the request.



=head2 B<REQUIRED> Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::LiveConnectorSinkConfiguration>]

The media live connector pipeline's data sinks.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::LiveConnectorSourceConfiguration>]

The media live connector pipeline's data sources.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags associated with the media live connector pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaLiveConnectorPipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

