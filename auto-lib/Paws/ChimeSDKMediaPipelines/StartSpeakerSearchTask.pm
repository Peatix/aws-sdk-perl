
package Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has KinesisVideoStreamSourceTaskConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration');
  has VoiceProfileDomainArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSpeakerSearchTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipelines/{identifier}/speaker-search-tasks?operation=start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTask - Arguments for method StartSpeakerSearchTask on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSpeakerSearchTask on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method StartSpeakerSearchTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSpeakerSearchTask.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $StartSpeakerSearchTaskResponse =
      $media -pipelines-chime->StartSpeakerSearchTask(
      Identifier            => 'MyNonEmptyString',
      VoiceProfileDomainArn => 'MyArn',
      ClientRequestToken    => 'MyClientRequestToken',    # OPTIONAL
      KinesisVideoStreamSourceTaskConfiguration => {
        ChannelId      => 1,                              # max: 1
        StreamArn      => 'MyKinesisVideoStreamArn',      # min: 1, max: 1024
        FragmentNumber => 'MyFragmentNumberString', # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $SpeakerSearchTask = $StartSpeakerSearchTaskResponse->SpeakerSearchTask;

# Returns a L<Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/StartSpeakerSearchTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different speaker search tasks.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the resource to be updated. Valid values
include the ID and ARN of the media insights pipeline.



=head2 KinesisVideoStreamSourceTaskConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration>

The task configuration for the Kinesis video stream source of the media
insights pipeline.



=head2 B<REQUIRED> VoiceProfileDomainArn => Str

The ARN of the voice profile domain that will store the voice profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSpeakerSearchTask in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

