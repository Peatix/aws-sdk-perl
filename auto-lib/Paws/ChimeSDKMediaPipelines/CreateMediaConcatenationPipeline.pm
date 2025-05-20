
package Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipeline;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::ConcatenationSink]', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::ConcatenationSource]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaConcatenationPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-concatenation-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipeline - Arguments for method CreateMediaConcatenationPipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaConcatenationPipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaConcatenationPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaConcatenationPipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaConcatenationPipelineResponse =
      $media -pipelines-chime->CreateMediaConcatenationPipeline(
      Sinks => [
        {
          S3BucketSinkConfiguration => {
            Destination => 'MyArn',    # min: 1, max: 1024

          },
          Type => 'S3Bucket',          # values: S3Bucket

        },
        ...
      ],
      Sources => [
        {
          MediaCapturePipelineSourceConfiguration => {
            ChimeSdkMeetingConfiguration => {
              ArtifactsConfiguration => {
                Audio => {
                  State => 'Enabled',    # values: Enabled

                },
                CompositedVideo => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },
                Content => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },
                DataChannel => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },
                MeetingEvents => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },
                TranscriptionMessages => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },
                Video => {
                  State => 'Enabled',    # values: Enabled, Disabled

                },

              },

            },
            MediaPipelineArn => 'MyArn',    # min: 1, max: 1024

          },
          Type => 'MediaCapturePipeline',    # values: MediaCapturePipeline

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
    my $MediaConcatenationPipeline =
      $CreateMediaConcatenationPipelineResponse->MediaConcatenationPipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaConcatenationPipeline>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the client request. The token makes the API
request idempotent. Use a unique token for each media concatenation
pipeline request.



=head2 B<REQUIRED> Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::ConcatenationSink>]

An object that specifies the data sinks for the media concatenation
pipeline.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::ConcatenationSource>]

An object that specifies the sources for the media concatenation
pipeline.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags associated with the media concatenation pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaConcatenationPipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

