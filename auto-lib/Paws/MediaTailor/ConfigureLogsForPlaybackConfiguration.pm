
package Paws::MediaTailor::ConfigureLogsForPlaybackConfiguration;
  use Moose;
  has AdsInteractionLog => (is => 'ro', isa => 'Paws::MediaTailor::AdsInteractionLog');
  has EnabledLoggingStrategies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ManifestServiceInteractionLog => (is => 'ro', isa => 'Paws::MediaTailor::ManifestServiceInteractionLog');
  has PercentEnabled => (is => 'ro', isa => 'Int', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureLogsForPlaybackConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configureLogs/playbackConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ConfigureLogsForPlaybackConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ConfigureLogsForPlaybackConfiguration - Arguments for method ConfigureLogsForPlaybackConfiguration on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureLogsForPlaybackConfiguration on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ConfigureLogsForPlaybackConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureLogsForPlaybackConfiguration.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ConfigureLogsForPlaybackConfigurationResponse =
      $api . mediatailor->ConfigureLogsForPlaybackConfiguration(
      PercentEnabled            => 1,
      PlaybackConfigurationName => 'My__string',
      AdsInteractionLog         => {
        ExcludeEventTypes => [
          'AD_MARKER_FOUND',
          ... # values: AD_MARKER_FOUND, NON_AD_MARKER_FOUND, MAKING_ADS_REQUEST, MODIFIED_TARGET_URL, VAST_REDIRECT, EMPTY_VAST_RESPONSE, EMPTY_VMAP_RESPONSE, VAST_RESPONSE, REDIRECTED_VAST_RESPONSE, FILLED_AVAIL, FILLED_OVERLAY_AVAIL, BEACON_FIRED, WARNING_NO_ADVERTISEMENTS, WARNING_VPAID_AD_DROPPED, WARNING_URL_VARIABLE_SUBSTITUTION_FAILED, ERROR_UNKNOWN, ERROR_UNKNOWN_HOST, ERROR_DISALLOWED_HOST, ERROR_ADS_IO, ERROR_ADS_TIMEOUT, ERROR_ADS_RESPONSE_PARSE, ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT, ERROR_ADS_INVALID_RESPONSE, ERROR_VAST_REDIRECT_EMPTY_RESPONSE, ERROR_VAST_REDIRECT_MULTIPLE_VAST, ERROR_VAST_REDIRECT_FAILED, ERROR_VAST_MISSING_MEDIAFILES, ERROR_VAST_MISSING_CREATIVES, ERROR_VAST_MISSING_OVERLAYS, ERROR_VAST_MISSING_IMPRESSION, ERROR_VAST_INVALID_VAST_AD_TAG_URI, ERROR_VAST_MULTIPLE_TRACKING_EVENTS, ERROR_VAST_MULTIPLE_LINEAR, ERROR_VAST_INVALID_MEDIA_FILE, ERROR_FIRING_BEACON_FAILED, ERROR_PERSONALIZATION_DISABLED, VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET, VOD_TIME_BASED_AVAIL_PLAN_SUCCESS, VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS, INTERSTITIAL_VOD_SUCCESS, INTERSTITIAL_VOD_FAILURE
        ],    # OPTIONAL
        PublishOptInEventTypes => [
          'RAW_ADS_RESPONSE', ...    # values: RAW_ADS_RESPONSE
        ],    # OPTIONAL
      },    # OPTIONAL
      EnabledLoggingStrategies => [
        'VENDED_LOGS', ...    # values: VENDED_LOGS, LEGACY_CLOUDWATCH
      ],    # OPTIONAL
      ManifestServiceInteractionLog => {
        ExcludeEventTypes => [
          'GENERATED_MANIFEST',
          ... # values: GENERATED_MANIFEST, ORIGIN_MANIFEST, SESSION_INITIALIZED, TRACKING_RESPONSE, CONFIG_SYNTAX_ERROR, CONFIG_SECURITY_ERROR, UNKNOWN_HOST, TIMEOUT_ERROR, CONNECTION_ERROR, IO_ERROR, UNKNOWN_ERROR, HOST_DISALLOWED, PARSING_ERROR, MANIFEST_ERROR, NO_MASTER_OR_MEDIA_PLAYLIST, NO_MASTER_PLAYLIST, NO_MEDIA_PLAYLIST, INCOMPATIBLE_HLS_VERSION, SCTE35_PARSING_ERROR, INVALID_SINGLE_PERIOD_DASH_MANIFEST, UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST, LAST_PERIOD_MISSING_AUDIO, LAST_PERIOD_MISSING_AUDIO_WARNING, ERROR_ORIGIN_PREFIX_INTERPOLATION, ERROR_ADS_INTERPOLATION, ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION, ERROR_CDN_AD_SEGMENT_INTERPOLATION, ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION, ERROR_SLATE_AD_URL_INTERPOLATION, ERROR_PROFILE_NAME_INTERPOLATION, ERROR_BUMPER_START_INTERPOLATION, ERROR_BUMPER_END_INTERPOLATION
        ],    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AdsInteractionLog =
      $ConfigureLogsForPlaybackConfigurationResponse->AdsInteractionLog;
    my $EnabledLoggingStrategies =
      $ConfigureLogsForPlaybackConfigurationResponse->EnabledLoggingStrategies;
    my $ManifestServiceInteractionLog =
      $ConfigureLogsForPlaybackConfigurationResponse
      ->ManifestServiceInteractionLog;
    my $PercentEnabled =
      $ConfigureLogsForPlaybackConfigurationResponse->PercentEnabled;
    my $PlaybackConfigurationName =
      $ConfigureLogsForPlaybackConfigurationResponse->PlaybackConfigurationName;

# Returns a L<Paws::MediaTailor::ConfigureLogsForPlaybackConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ConfigureLogsForPlaybackConfiguration>

=head1 ATTRIBUTES


=head2 AdsInteractionLog => L<Paws::MediaTailor::AdsInteractionLog>

The event types that MediaTailor emits in logs for interactions with
the ADS.



=head2 EnabledLoggingStrategies => ArrayRef[Str|Undef]

The method used for collecting logs from AWS Elemental MediaTailor. To
configure MediaTailor to send logs directly to Amazon CloudWatch Logs,
choose C<LEGACY_CLOUDWATCH>. To configure MediaTailor to send logs to
CloudWatch, which then vends the logs to your destination of choice,
choose C<VENDED_LOGS>. Supported destinations are CloudWatch Logs log
group, Amazon S3 bucket, and Amazon Data Firehose stream.

To use vended logs, you must configure the delivery destination in
Amazon CloudWatch, as described in Enable logging from AWS services,
Logging that requires additional permissions [V2]
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html#AWS-vended-logs-permissions-V2).



=head2 ManifestServiceInteractionLog => L<Paws::MediaTailor::ManifestServiceInteractionLog>

The event types that MediaTailor emits in logs for interactions with
the origin server.



=head2 B<REQUIRED> PercentEnabled => Int

The percentage of session logs that MediaTailor sends to your
CloudWatch Logs account. For example, if your playback configuration
has 1000 sessions and percentEnabled is set to C<60>, MediaTailor sends
logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at
random which of the playback configuration sessions to send logs for.
If you want to view logs for a specific session, you can use the debug
log mode
(https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html).

Valid values: C<0> - C<100>



=head2 B<REQUIRED> PlaybackConfigurationName => Str

The name of the playback configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfigureLogsForPlaybackConfiguration in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

