
package Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPool;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has PoolName => (is => 'ro', isa => 'Str', required => 1);
  has StreamConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMediaPipelineKinesisVideoStreamPool');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-pipeline-kinesis-video-stream-pools');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPoolResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPool - Arguments for method CreateMediaPipelineKinesisVideoStreamPool on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMediaPipelineKinesisVideoStreamPool on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method CreateMediaPipelineKinesisVideoStreamPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMediaPipelineKinesisVideoStreamPool.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $CreateMediaPipelineKinesisVideoStreamPoolResponse =
      $media -pipelines-chime->CreateMediaPipelineKinesisVideoStreamPool(
      PoolName            => 'MyKinesisVideoStreamPoolName',
      StreamConfiguration => {
        Region               => 'MyAwsRegion',    # min: 1, max: 32
        DataRetentionInHours => 1,                # OPTIONAL
      },
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
    my $KinesisVideoStreamPoolConfiguration =
      $CreateMediaPipelineKinesisVideoStreamPoolResponse
      ->KinesisVideoStreamPoolConfiguration;

# Returns a L<Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPoolResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/CreateMediaPipelineKinesisVideoStreamPool>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The token assigned to the client making the request.



=head2 B<REQUIRED> PoolName => Str

The name of the pool.



=head2 B<REQUIRED> StreamConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfiguration>

The configuration settings for the stream.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags assigned to the stream pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMediaPipelineKinesisVideoStreamPool in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

