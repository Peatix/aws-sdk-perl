
package Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipeline;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaStreamSink]', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaStreamSource]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaStreamPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-stream-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipeline - Arguments for method CreateMediaStreamPipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaStreamPipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaStreamPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaStreamPipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaStreamPipelineResponse =
      $media -pipelines-chime->CreateMediaStreamPipeline(
      Sinks => [
        {
          MediaStreamType => 'MixedAudio', # values: MixedAudio, IndividualAudio
          ReservedStreamCapacity => 1,          # min: 1, max: 10
          SinkArn                => 'MyArn',    # min: 1, max: 1024
          SinkType => 'KinesisVideoStreamPool', # values: KinesisVideoStreamPool

        },
        ...
      ],
      Sources => [
        {
          SourceArn  => 'MyArn',                # min: 1, max: 1024
          SourceType => 'ChimeSdkMeeting',      # values: ChimeSdkMeeting

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
    my $MediaStreamPipeline =
      $CreateMediaStreamPipelineResponse->MediaStreamPipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaStreamPipeline>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The token assigned to the client making the request.



=head2 B<REQUIRED> Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSink>]

The data sink for the media pipeline.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSource>]

The data sources for the media pipeline.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags assigned to the media pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaStreamPipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

