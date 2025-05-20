
package Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPool;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has StreamConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfigurationUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMediaPipelineKinesisVideoStreamPool');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-pipeline-kinesis-video-stream-pools/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPoolResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPool - Arguments for method UpdateMediaPipelineKinesisVideoStreamPool on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMediaPipelineKinesisVideoStreamPool on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method UpdateMediaPipelineKinesisVideoStreamPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMediaPipelineKinesisVideoStreamPool.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $UpdateMediaPipelineKinesisVideoStreamPoolResponse =
      $media -pipelines-chime->UpdateMediaPipelineKinesisVideoStreamPool(
      Identifier          => 'MyNonEmptyString',
      StreamConfiguration => {
        DataRetentionInHours => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $KinesisVideoStreamPoolConfiguration =
      $UpdateMediaPipelineKinesisVideoStreamPoolResponse
      ->KinesisVideoStreamPoolConfiguration;

# Returns a L<Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPoolResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/UpdateMediaPipelineKinesisVideoStreamPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the requested resource. Valid values include
the name and ARN of the media pipeline Kinesis Video Stream pool.



=head2 StreamConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfigurationUpdate>

The configuration settings for the video stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMediaPipelineKinesisVideoStreamPool in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

