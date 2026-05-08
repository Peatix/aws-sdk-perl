package Paws::ChimeSDKMediaPipelines;
  use Moose;
  sub service { 'media-pipelines-chime' }
  sub signing_name { 'chime' }
  sub version { '2021-07-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateMediaCapturePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaConcatenationPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaInsightsPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaInsightsPipelineConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaLiveConnectorPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaPipelineKinesisVideoStreamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMediaStreamPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMediaCapturePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::DeleteMediaCapturePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMediaInsightsPipelineConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::DeleteMediaInsightsPipelineConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMediaPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::DeleteMediaPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMediaPipelineKinesisVideoStreamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::DeleteMediaPipelineKinesisVideoStreamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaCapturePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetMediaCapturePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaInsightsPipelineConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetMediaPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaPipelineKinesisVideoStreamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetMediaPipelineKinesisVideoStreamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::GetVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMediaCapturePipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMediaInsightsPipelineConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMediaPipelineKinesisVideoStreamPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::ListMediaPipelineKinesisVideoStreamPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMediaPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::ListMediaPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::StopSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::StopVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMediaInsightsPipelineConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMediaInsightsPipelineStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMediaPipelineKinesisVideoStreamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateMediaCapturePipeline CreateMediaConcatenationPipeline CreateMediaInsightsPipeline CreateMediaInsightsPipelineConfiguration CreateMediaLiveConnectorPipeline CreateMediaPipelineKinesisVideoStreamPool CreateMediaStreamPipeline DeleteMediaCapturePipeline DeleteMediaInsightsPipelineConfiguration DeleteMediaPipeline DeleteMediaPipelineKinesisVideoStreamPool GetMediaCapturePipeline GetMediaInsightsPipelineConfiguration GetMediaPipeline GetMediaPipelineKinesisVideoStreamPool GetSpeakerSearchTask GetVoiceToneAnalysisTask ListMediaCapturePipelines ListMediaInsightsPipelineConfigurations ListMediaPipelineKinesisVideoStreamPools ListMediaPipelines ListTagsForResource StartSpeakerSearchTask StartVoiceToneAnalysisTask StopSpeakerSearchTask StopVoiceToneAnalysisTask TagResource UntagResource UpdateMediaInsightsPipelineConfiguration UpdateMediaInsightsPipelineStatus UpdateMediaPipelineKinesisVideoStreamPool / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines - Perl Interface to AWS Amazon Chime SDK Media Pipelines

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ChimeSDKMediaPipelines');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon Chime SDK media pipeline APIs in this section allow software
developers to create Amazon Chime SDK media pipelines that capture,
concatenate, or stream your Amazon Chime SDK meetings. For more
information about media pipelines, see Amazon Chime SDK media pipelines
(https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime-2021-07-15>


=head1 METHODS

=head2 CreateMediaCapturePipeline

=over

=item SinkArn => Str

=item SinkType => Str

=item SourceArn => Str

=item SourceType => Str

=item [ChimeSdkMeetingConfiguration => L<Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConfiguration>]

=item [ClientRequestToken => Str]

=item [SinkIamRoleArn => Str]

=item [SseAwsKeyManagementParams => L<Paws::ChimeSDKMediaPipelines::SseAwsKeyManagementParams>]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipelineResponse> instance

Creates a media pipeline.


=head2 CreateMediaConcatenationPipeline

=over

=item Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::ConcatenationSink>]

=item Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::ConcatenationSource>]

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipelineResponse> instance

Creates a media concatenation pipeline.


=head2 CreateMediaInsightsPipeline

=over

=item MediaInsightsPipelineConfigurationArn => Str

=item [ClientRequestToken => Str]

=item [KinesisVideoStreamRecordingSourceRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamRecordingSourceRuntimeConfiguration>]

=item [KinesisVideoStreamSourceRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceRuntimeConfiguration>]

=item [MediaInsightsRuntimeMetadata => L<Paws::ChimeSDKMediaPipelines::MediaInsightsRuntimeMetadata>]

=item [S3RecordingSinkRuntimeConfiguration => L<Paws::ChimeSDKMediaPipelines::S3RecordingSinkRuntimeConfiguration>]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineResponse> instance

Creates a media insights pipeline.


=head2 CreateMediaInsightsPipelineConfiguration

=over

=item Elements => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationElement>]

=item MediaInsightsPipelineConfigurationName => Str

=item ResourceAccessRoleArn => Str

=item [ClientRequestToken => Str]

=item [RealTimeAlertConfiguration => L<Paws::ChimeSDKMediaPipelines::RealTimeAlertConfiguration>]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineConfiguration>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineConfigurationResponse> instance

A structure that contains the static configurations for a media
insights pipeline.


=head2 CreateMediaLiveConnectorPipeline

=over

=item Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::LiveConnectorSinkConfiguration>]

=item Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::LiveConnectorSourceConfiguration>]

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipelineResponse> instance

Creates a media live connector pipeline in an Amazon Chime SDK meeting.


=head2 CreateMediaPipelineKinesisVideoStreamPool

=over

=item PoolName => Str

=item StreamConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfiguration>

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPool>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPoolResponse> instance

Creates an Amazon Kinesis Video Stream pool for use with media stream
pipelines.

If a meeting uses an opt-in Region as its MediaRegion
(https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion),
the KVS stream must be in that same Region. For example, if a meeting
uses the C<af-south-1> Region, the KVS stream must also be in
C<af-south-1>. However, if the meeting uses a Region that AWS turns on
by default, the KVS stream can be in any available Region, including an
opt-in Region. For example, if the meeting uses C<ca-central-1>, the
KVS stream can be in C<eu-west-2>, C<us-east-1>, C<af-south-1>, or any
other Region that the Amazon Chime SDK supports.

To learn which AWS Region a meeting uses, call the GetMeeting
(https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html)
API and use the MediaRegion
(https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion)
parameter from the response.

For more information about opt-in Regions, refer to Available Regions
(https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions.html)
in the I<Amazon Chime SDK Developer Guide>, and Specify which AWS
Regions your account can use
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#rande-manage-enable.html),
in the I<AWS Account Management Reference Guide>.


=head2 CreateMediaStreamPipeline

=over

=item Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSink>]

=item Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSource>]

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipelineResponse> instance

Creates a streaming media pipeline.


=head2 DeleteMediaCapturePipeline

=over

=item MediaPipelineId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::DeleteMediaCapturePipeline>

Returns: nothing

Deletes the media pipeline.


=head2 DeleteMediaInsightsPipelineConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::DeleteMediaInsightsPipelineConfiguration>

Returns: nothing

Deletes the specified configuration settings.


=head2 DeleteMediaPipeline

=over

=item MediaPipelineId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::DeleteMediaPipeline>

Returns: nothing

Deletes the media pipeline.


=head2 DeleteMediaPipelineKinesisVideoStreamPool

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::DeleteMediaPipelineKinesisVideoStreamPool>

Returns: nothing

Deletes an Amazon Kinesis Video Stream pool.


=head2 GetMediaCapturePipeline

=over

=item MediaPipelineId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetMediaCapturePipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetMediaCapturePipelineResponse> instance

Gets an existing media pipeline.


=head2 GetMediaInsightsPipelineConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfiguration>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfigurationResponse> instance

Gets the configuration settings for a media insights pipeline.


=head2 GetMediaPipeline

=over

=item MediaPipelineId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetMediaPipeline>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetMediaPipelineResponse> instance

Gets an existing media pipeline.


=head2 GetMediaPipelineKinesisVideoStreamPool

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetMediaPipelineKinesisVideoStreamPool>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetMediaPipelineKinesisVideoStreamPoolResponse> instance

Gets an Kinesis video stream pool.


=head2 GetSpeakerSearchTask

=over

=item Identifier => Str

=item SpeakerSearchTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetSpeakerSearchTask>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetSpeakerSearchTaskResponse> instance

Retrieves the details of the specified speaker search task.


=head2 GetVoiceToneAnalysisTask

=over

=item Identifier => Str

=item VoiceToneAnalysisTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::GetVoiceToneAnalysisTask>

Returns: a L<Paws::ChimeSDKMediaPipelines::GetVoiceToneAnalysisTaskResponse> instance

Retrieves the details of a voice tone analysis task.


=head2 ListMediaCapturePipelines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelines>

Returns: a L<Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelinesResponse> instance

Returns a list of media pipelines.


=head2 ListMediaInsightsPipelineConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurations>

Returns: a L<Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurationsResponse> instance

Lists the available media insights pipeline configurations.


=head2 ListMediaPipelineKinesisVideoStreamPools

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::ListMediaPipelineKinesisVideoStreamPools>

Returns: a L<Paws::ChimeSDKMediaPipelines::ListMediaPipelineKinesisVideoStreamPoolsResponse> instance

Lists the video stream pools in the media pipeline.


=head2 ListMediaPipelines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::ListMediaPipelines>

Returns: a L<Paws::ChimeSDKMediaPipelines::ListMediaPipelinesResponse> instance

Returns a list of media pipelines.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::ListTagsForResource>

Returns: a L<Paws::ChimeSDKMediaPipelines::ListTagsForResourceResponse> instance

Lists the tags available for a media pipeline.


=head2 StartSpeakerSearchTask

=over

=item Identifier => Str

=item VoiceProfileDomainArn => Str

=item [ClientRequestToken => Str]

=item [KinesisVideoStreamSourceTaskConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTask>

Returns: a L<Paws::ChimeSDKMediaPipelines::StartSpeakerSearchTaskResponse> instance

Starts a speaker search task.

Before starting any speaker search tasks, you must provide all notices
and obtain all consents from the speaker as required under applicable
privacy and biometrics laws, and as required under the AWS service
terms (https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.


=head2 StartVoiceToneAnalysisTask

=over

=item Identifier => Str

=item LanguageCode => Str

=item [ClientRequestToken => Str]

=item [KinesisVideoStreamSourceTaskConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamSourceTaskConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTask>

Returns: a L<Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTaskResponse> instance

Starts a voice tone analysis task. For more information about voice
tone analysis, see Using Amazon Chime SDK voice analytics
(https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html)
in the I<Amazon Chime SDK Developer Guide>.

Before starting any voice tone analysis tasks, you must provide all
notices and obtain all consents from the speaker as required under
applicable privacy and biometrics laws, and as required under the AWS
service terms (https://aws.amazon.com/service-terms/) for the Amazon
Chime SDK.


=head2 StopSpeakerSearchTask

=over

=item Identifier => Str

=item SpeakerSearchTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::StopSpeakerSearchTask>

Returns: nothing

Stops a speaker search task.


=head2 StopVoiceToneAnalysisTask

=over

=item Identifier => Str

=item VoiceToneAnalysisTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::StopVoiceToneAnalysisTask>

Returns: nothing

Stops a voice tone analysis task.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::TagResource>

Returns: a L<Paws::ChimeSDKMediaPipelines::TagResourceResponse> instance

The ARN of the media pipeline that you want to tag. Consists of the
pipeline's endpoint region, resource ID, and pipeline ID.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::UntagResource>

Returns: a L<Paws::ChimeSDKMediaPipelines::UntagResourceResponse> instance

Removes any tags from a media pipeline.


=head2 UpdateMediaInsightsPipelineConfiguration

=over

=item Elements => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationElement>]

=item Identifier => Str

=item ResourceAccessRoleArn => Str

=item [RealTimeAlertConfiguration => L<Paws::ChimeSDKMediaPipelines::RealTimeAlertConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfiguration>

Returns: a L<Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfigurationResponse> instance

Updates the media insights pipeline's configuration settings.


=head2 UpdateMediaInsightsPipelineStatus

=over

=item Identifier => Str

=item UpdateStatus => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineStatus>

Returns: nothing

Updates the status of a media insights pipeline.


=head2 UpdateMediaPipelineKinesisVideoStreamPool

=over

=item Identifier => Str

=item [StreamConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamConfigurationUpdate>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPool>

Returns: a L<Paws::ChimeSDKMediaPipelines::UpdateMediaPipelineKinesisVideoStreamPoolResponse> instance

Updates an Amazon Kinesis Video Stream pool in a media pipeline.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

