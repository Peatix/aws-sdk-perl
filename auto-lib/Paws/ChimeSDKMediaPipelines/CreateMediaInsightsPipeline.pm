
package Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipeline;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has KinesisVideoStreamRecordingSourceRuntimeConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamRecordingSourceRuntimeConfiguration');
  has KinesisVideoStreamSourceRuntimeConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceRuntimeConfiguration');
  has MediaInsightsPipelineConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has MediaInsightsRuntimeMetadata => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaInsightsRuntimeMetadata');
  has S3RecordingSinkRuntimeConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::S3RecordingSinkRuntimeConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaInsightsPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipeline - Arguments for method CreateMediaInsightsPipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaInsightsPipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaInsightsPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaInsightsPipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaInsightsPipelineResponse =
      $media -pipelines-chime->CreateMediaInsightsPipeline(
      MediaInsightsPipelineConfigurationArn => 'MyArn',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      KinesisVideoStreamRecordingSourceRuntimeConfiguration => {
        FragmentSelector => {
          FragmentSelectorType =>
            'ProducerTimestamp',    # values: ProducerTimestamp, ServerTimestamp
          TimestampRange => {
            EndTimestamp   => '1970-01-01T01:00:00',
            StartTimestamp => '1970-01-01T01:00:00',

          },

        },
        Streams => [
          {
            StreamArn =>
              'MyKinesisVideoStreamArn',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],    # min: 1, max: 2

      },    # OPTIONAL
      KinesisVideoStreamSourceRuntimeConfiguration => {
        MediaEncoding   => 'pcm',    # values: pcm
        MediaSampleRate => 1,        # min: 8000, max: 48000
        Streams         => [
          {
            StreamArn =>
              'MyKinesisVideoStreamArn',    # min: 1, max: 1024; OPTIONAL
            StreamChannelDefinition => {
              NumberOfChannels   => 1,      # min: 1, max: 2
              ChannelDefinitions => [
                {
                  ChannelId       => 1,    # max: 1
                  ParticipantRole =>
                    'AGENT',               # values: AGENT, CUSTOMER; OPTIONAL
                },
                ...
              ],    # min: 1, max: 2; OPTIONAL
            },
            FragmentNumber =>
              'MyFragmentNumberString',    # min: 1, max: 128; OPTIONAL
          },
          ...
        ],    # min: 1, max: 2

      },    # OPTIONAL
      MediaInsightsRuntimeMetadata => {
        'MyNonEmptyString' => 'MyString',    # key: max: 1024, value: max: 4096
      },    # OPTIONAL
      S3RecordingSinkRuntimeConfiguration => {
        Destination         => 'MyArn',    # min: 1, max: 1024
        RecordingFileFormat => 'Wav',      # values: Wav, Opus

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
    my $MediaInsightsPipeline =
      $CreateMediaInsightsPipelineResponse->MediaInsightsPipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaInsightsPipeline>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the media insights pipeline request.



=head2 KinesisVideoStreamRecordingSourceRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamRecordingSourceRuntimeConfiguration>

The runtime configuration for the Kinesis video recording stream
source.



=head2 KinesisVideoStreamSourceRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceRuntimeConfiguration>

The runtime configuration for the Kinesis video stream source of the
media insights pipeline.



=head2 B<REQUIRED> MediaInsightsPipelineConfigurationArn => Str

The ARN of the pipeline's configuration.



=head2 MediaInsightsRuntimeMetadata => L<Paws::ChimeSDKMediaPipelines::MediaInsightsRuntimeMetadata>

The runtime metadata for the media insights pipeline. Consists of a
key-value map of strings.



=head2 S3RecordingSinkRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::S3RecordingSinkRuntimeConfiguration>

The runtime configuration for the S3 recording sink. If specified, the
settings in this structure override any settings in
C<S3RecordingSinkConfiguration>.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags assigned to the media insights pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaInsightsPipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

