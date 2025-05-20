
package Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has KinesisVideoStreamSourceTaskConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartVoiceToneAnalysisTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipelines/{identifier}/voice-tone-analysis-tasks?operation=start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTask - Arguments for method StartVoiceToneAnalysisTask on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartVoiceToneAnalysisTask on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method StartVoiceToneAnalysisTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartVoiceToneAnalysisTask.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $StartVoiceToneAnalysisTaskResponse =
      $media -pipelines-chime->StartVoiceToneAnalysisTask(
      Identifier         => 'MyNonEmptyString',
      LanguageCode       => 'en-US',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      KinesisVideoStreamSourceTaskConfiguration => {
        ChannelId      => 1,                            # max: 1
        StreamArn      => 'MyKinesisVideoStreamArn',    # min: 1, max: 1024
        FragmentNumber => 'MyFragmentNumberString', # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $VoiceToneAnalysisTask =
      $StartVoiceToneAnalysisTaskResponse->VoiceToneAnalysisTask;

# Returns a L<Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/StartVoiceToneAnalysisTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different voice tone analysis tasks.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the resource to be updated. Valid values
include the ID and ARN of the media insights pipeline.



=head2 KinesisVideoStreamSourceTaskConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration>

The task configuration for the Kinesis video stream source of the media
insights pipeline.



=head2 B<REQUIRED> LanguageCode => Str

The language code.

Valid values are: C<"en-US">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartVoiceToneAnalysisTask in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

