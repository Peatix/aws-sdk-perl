
package Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipeline;
  use Moose;
  has ChimeSdkMeetingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConfiguration');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has SinkArn => (is => 'ro', isa => 'Str', required => 1);
  has SinkIamRoleArn => (is => 'ro', isa => 'Str');
  has SinkType => (is => 'ro', isa => 'Str', required => 1);
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceType => (is => 'ro', isa => 'Str', required => 1);
  has SseAwsKeyManagementParams => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::SseAwsKeyManagementParams');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaCapturePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-capture-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipeline - Arguments for method CreateMediaCapturePipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaCapturePipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaCapturePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaCapturePipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaCapturePipelineResponse =
      $media -pipelines-chime->CreateMediaCapturePipeline(
      SinkArn                      => 'MyArn',
      SinkType                     => 'S3Bucket',
      SourceArn                    => 'MyArn',
      SourceType                   => 'ChimeSdkMeeting',
      ChimeSdkMeetingConfiguration => {
        ArtifactsConfiguration => {
          Audio => {
            MuxType => 'AudioOnly'
            , # values: AudioOnly, AudioWithActiveSpeakerVideo, AudioWithCompositedVideo

          },
          Content => {
            State   => 'Enabled',        # values: Enabled, Disabled
            MuxType => 'ContentOnly',    # values: ContentOnly; OPTIONAL
          },
          Video => {
            State   => 'Enabled',        # values: Enabled, Disabled
            MuxType => 'VideoOnly',      # values: VideoOnly; OPTIONAL
          },
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
                TileCount       => 1,               # min: 1, max: 10; OPTIONAL
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
                TileCount       => 1,               # min: 1, max: 10; OPTIONAL
                TileOrder       => 'JoinSequence'
                ,    # values: JoinSequence, SpeakerSequence; OPTIONAL
                TilePosition => 'Left',    # values: Left, Right; OPTIONAL
              },    # OPTIONAL
              VideoAttribute => {
                BorderColor => 'Black'
                ,    # values: Black, Blue, Red, Green, White, Yellow; OPTIONAL
                BorderThickness => 1,        # min: 1, max: 20; OPTIONAL
                CornerRadius    => 1,        # min: 1, max: 20; OPTIONAL
                HighlightColor  => 'Black'
                ,    # values: Black, Blue, Red, Green, White, Yellow; OPTIONAL
              },    # OPTIONAL
            },
            Layout     => 'GridView',    # values: GridView; OPTIONAL
            Resolution => 'HD',          # values: HD, FHD; OPTIONAL
          },    # OPTIONAL
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
      },    # OPTIONAL
      ClientRequestToken        => 'MyClientRequestToken',    # OPTIONAL
      SinkIamRoleArn            => 'MyArn',                   # OPTIONAL
      SseAwsKeyManagementParams => {
        AwsKmsKeyId             => 'MyString',                # max: 4096
        AwsKmsEncryptionContext => 'MyString',                # max: 4096
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $MediaCapturePipeline =
      $CreateMediaCapturePipelineResponse->MediaCapturePipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaCapturePipeline>

=head1 ATTRIBUTES


=head2 ChimeSdkMeetingConfiguration => L<Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConfiguration>

The configuration for a specified media pipeline. C<SourceType> must be
C<ChimeSdkMeeting>.



=head2 ClientRequestToken => Str

The unique identifier for the client request. The token makes the API
request idempotent. Use a unique token for each media pipeline request.



=head2 B<REQUIRED> SinkArn => Str

The ARN of the sink type.



=head2 SinkIamRoleArn => Str

The Amazon Resource Name (ARN) of the sink role to be used with
C<AwsKmsKeyId> in C<SseAwsKeyManagementParams>. Can only interact with
C<S3Bucket> sink type. The role must belong to the callerE<rsquo>s
account and be able to act on behalf of the caller during the API call.
All minimum policy permissions requirements for the caller to perform
sink-related actions are the same for C<SinkIamRoleArn>.

Additionally, the role must have permission to C<kms:GenerateDataKey>
using KMS key supplied as C<AwsKmsKeyId> in
C<SseAwsKeyManagementParams>. If media concatenation will be required
later, the role must also have permission to C<kms:Decrypt> for the
same KMS key.



=head2 B<REQUIRED> SinkType => Str

Destination type to which the media artifacts are saved. You must use
an S3 bucket.

Valid values are: C<"S3Bucket">

=head2 B<REQUIRED> SourceArn => Str

ARN of the source from which the media artifacts are captured.



=head2 B<REQUIRED> SourceType => Str

Source type from which the media artifacts are captured. A Chime SDK
Meeting is the only supported source.

Valid values are: C<"ChimeSdkMeeting">

=head2 SseAwsKeyManagementParams => L<Paws::ChimeSDKMediaPipelines::SseAwsKeyManagementParams>

An object that contains server side encryption parameters to be used by
media capture pipeline. The parameters can also be used by media
concatenation pipeline taking media capture pipeline as a media source.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tag key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaCapturePipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

