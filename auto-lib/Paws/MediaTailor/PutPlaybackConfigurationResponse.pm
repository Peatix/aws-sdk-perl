
package Paws::MediaTailor::PutPlaybackConfigurationResponse;
  use Moose;
  has AdConditioningConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::AdConditioningConfiguration');
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has AvailSuppression => (is => 'ro', isa => 'Paws::MediaTailor::AvailSuppression');
  has Bumper => (is => 'ro', isa => 'Paws::MediaTailor::Bumper');
  has CdnConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::CdnConfiguration');
  has ConfigurationAliases => (is => 'ro', isa => 'Paws::MediaTailor::ConfigurationAliasesResponse');
  has DashConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DashConfiguration');
  has HlsConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HlsConfiguration');
  has InsertionMode => (is => 'ro', isa => 'Str');
  has LivePreRollConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::LivePreRollConfiguration');
  has LogConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::LogConfiguration');
  has ManifestProcessingRules => (is => 'ro', isa => 'Paws::MediaTailor::ManifestProcessingRules');
  has Name => (is => 'ro', isa => 'Str');
  has PersonalizationThresholdSeconds => (is => 'ro', isa => 'Int');
  has PlaybackConfigurationArn => (is => 'ro', isa => 'Str');
  has PlaybackEndpointPrefix => (is => 'ro', isa => 'Str');
  has SessionInitializationEndpointPrefix => (is => 'ro', isa => 'Str');
  has SlateAdUrl => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has TranscodeProfileName => (is => 'ro', isa => 'Str');
  has VideoContentSourceUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::PutPlaybackConfigurationResponse

=head1 ATTRIBUTES


=head2 AdConditioningConfiguration => L<Paws::MediaTailor::AdConditioningConfiguration>

The setting that indicates what conditioning MediaTailor will perform
on ads that the ad decision server (ADS) returns, and what priority
MediaTailor uses when inserting ads.


=head2 AdDecisionServerUrl => Str

The URL for the ad decision server (ADS). This includes the
specification of static parameters and placeholders for dynamic
parameters. AWS Elemental MediaTailor substitutes player-specific and
session-specific parameters as needed when calling the ADS.
Alternately, for testing you can provide a static VAST URL. The maximum
length is 25,000 characters.


=head2 AvailSuppression => L<Paws::MediaTailor::AvailSuppression>

The configuration for avail suppression, also known as ad suppression.
For more information about ad suppression, see Ad Suppression
(https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html).


=head2 Bumper => L<Paws::MediaTailor::Bumper>

The configuration for bumpers. Bumpers are short audio or video clips
that play at the start or before the end of an ad break. To learn more
about bumpers, see Bumpers
(https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html).


=head2 CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>

The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.


=head2 ConfigurationAliases => L<Paws::MediaTailor::ConfigurationAliasesResponse>

The player parameters and aliases used as dynamic variables during
session initialization. For more information, see Domain Variables
(https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html).


=head2 DashConfiguration => L<Paws::MediaTailor::DashConfiguration>

The configuration for DASH content.


=head2 HlsConfiguration => L<Paws::MediaTailor::HlsConfiguration>

The configuration for HLS content.


=head2 InsertionMode => Str

The setting that controls whether players can use stitched or guided ad
insertion. The default, C<STITCHED_ONLY>, forces all player sessions to
use stitched (server-side) ad insertion. Choosing C<PLAYER_SELECT>
allows players to select either stitched or guided ad insertion at
session-initialization time. The default for players that do not
specify an insertion mode is stitched.

Valid values are: C<"STITCHED_ONLY">, C<"PLAYER_SELECT">
=head2 LivePreRollConfiguration => L<Paws::MediaTailor::LivePreRollConfiguration>

The configuration for pre-roll ad insertion.


=head2 LogConfiguration => L<Paws::MediaTailor::LogConfiguration>

The configuration that defines where AWS Elemental MediaTailor sends
logs for the playback configuration.


=head2 ManifestProcessingRules => L<Paws::MediaTailor::ManifestProcessingRules>

The configuration for manifest processing rules. Manifest processing
rules enable customization of the personalized manifests created by
MediaTailor.


=head2 Name => Str

The identifier for the playback configuration.


=head2 PersonalizationThresholdSeconds => Int

Defines the maximum duration of underfilled ad time (in seconds)
allowed in an ad break. If the duration of underfilled ad time exceeds
the personalization threshold, then the personalization of the ad break
is abandoned and the underlying content is shown. This feature applies
to I<ad replacement> in live and VOD streams, rather than ad insertion,
because it relies on an underlying content stream. For more information
about ad break behavior, including ad replacement and insertion, see Ad
Behavior in AWS Elemental MediaTailor
(https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html).


=head2 PlaybackConfigurationArn => Str

The Amazon Resource Name (ARN) associated with the playback
configuration.


=head2 PlaybackEndpointPrefix => Str

The playback endpoint prefix associated with the playback
configuration.


=head2 SessionInitializationEndpointPrefix => Str

The session initialization endpoint prefix associated with the playback
configuration.


=head2 SlateAdUrl => Str

The URL for a high-quality video asset to transcode and use to fill in
time that's not used by ads. AWS Elemental MediaTailor shows the slate
to fill in gaps in media content. Configuring the slate is optional for
non-VPAID configurations. For VPAID, the slate is required because
MediaTailor provides it in the slots that are designated for dynamic ad
content. The slate must be a high-quality asset that contains both
audio and video.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the playback configuration. Tags are key-value
pairs that you can associate with Amazon resources to help with
organization, access control, and cost tracking. For more information,
see Tagging AWS Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).


=head2 TranscodeProfileName => Str

The name that is used to associate this playback configuration with a
custom transcode profile. This overrides the dynamic transcoding
defaults of MediaTailor. Use this only if you have already set up
custom profiles with the help of AWS Support.


=head2 VideoContentSourceUrl => Str

The URL prefix for the parent manifest for the stream, minus the asset
ID. The maximum length is 512 characters.


=head2 _request_id => Str


=cut

