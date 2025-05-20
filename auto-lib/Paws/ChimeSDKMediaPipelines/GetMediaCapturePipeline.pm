
package Paws::ChimeSDKMediaPipelines::GetMediaCapturePipeline;
  use Moose;
  has MediaPipelineId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'mediaPipelineId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMediaCapturePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-capture-pipelines/{mediaPipelineId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::GetMediaCapturePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::GetMediaCapturePipeline - Arguments for method GetMediaCapturePipeline on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMediaCapturePipeline on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method GetMediaCapturePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMediaCapturePipeline.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $GetMediaCapturePipelineResponse =
      $media -pipelines-chime->GetMediaCapturePipeline(
      MediaPipelineId => 'MyGuidString',

      );

    # Results:
    my $MediaCapturePipeline =
      $GetMediaCapturePipelineResponse->MediaCapturePipeline;

# Returns a L<Paws::ChimeSDKMediaPipelines::GetMediaCapturePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/GetMediaCapturePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MediaPipelineId => Str

The ID of the pipeline that you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMediaCapturePipeline in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

