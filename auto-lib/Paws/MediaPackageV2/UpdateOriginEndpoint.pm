
package Paws::MediaPackageV2::UpdateOriginEndpoint;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has ContainerType => (is => 'ro', isa => 'Str', required => 1);
  has DashManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::CreateDashManifestConfiguration]');
  has Description => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-update-if-match');
  has ForceEndpointErrorConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::ForceEndpointErrorConfiguration');
  has HlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::CreateHlsManifestConfiguration]');
  has LowLatencyHlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::CreateLowLatencyHlsManifestConfiguration]');
  has OriginEndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OriginEndpointName', required => 1);
  has Segment => (is => 'ro', isa => 'Paws::MediaPackageV2::Segment');
  has StartoverWindowSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOriginEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::UpdateOriginEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::UpdateOriginEndpoint - Arguments for method UpdateOriginEndpoint on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOriginEndpoint on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method UpdateOriginEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOriginEndpoint.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $UpdateOriginEndpointResponse = $mediapackagev2->UpdateOriginEndpoint(
      ChannelGroupName   => 'MyResourceName',
      ChannelName        => 'MyResourceName',
      ContainerType      => 'TS',
      OriginEndpointName => 'MyResourceName',
      DashManifests      => [
        {
          ManifestName => 'MyManifestName',    # min: 1, max: 256
          BaseUrls     => [
            {
              Url             => 'MyDashBaseUrlUrlString',   # min: 1, max: 2048
              DvbPriority     => 1,    # min: 1, max: 15000; OPTIONAL
              DvbWeight       => 1,    # min: 1, max: 15000; OPTIONAL
              ServiceLocation => 'MyDashBaseUrlServiceLocationString'
              ,                        # min: 1, max: 2048; OPTIONAL
            },
            ...
          ],    # max: 20; OPTIONAL
          Compactness  => 'STANDARD',    # values: STANDARD, NONE; OPTIONAL
          DrmSignaling =>
            'INDIVIDUAL',    # values: INDIVIDUAL, REFERENCED; OPTIONAL
          DvbSettings => {
            ErrorMetrics => [
              {
                ReportingUrl => 'MyDashDvbMetricsReportingReportingUrlString'
                ,                    # min: 1, max: 2048
                Probability => 1,    # min: 1, max: 1000; OPTIONAL
              },
              ...
            ],    # max: 20; OPTIONAL
            FontDownload => {
              FontFamily => 'MyDashDvbFontDownloadFontFamilyString'
              ,                                    # min: 1, max: 256; OPTIONAL
              MimeType => 'MyDashDvbFontDownloadMimeTypeString'
              ,                                    # min: 1, max: 256; OPTIONAL
              Url =>
                'MyDashDvbFontDownloadUrlString',  # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          FilterConfiguration => {
            ClipStartTime  => '1970-01-01T01:00:00',    # OPTIONAL
            End            => '1970-01-01T01:00:00',    # OPTIONAL
            ManifestFilter => 'MyFilterConfigurationManifestFilterString'
            ,    # min: 1, max: 1024; OPTIONAL
            Start            => '1970-01-01T01:00:00',  # OPTIONAL
            TimeDelaySeconds => 1,                      # max: 1209600; OPTIONAL
          },    # OPTIONAL
          ManifestWindowSeconds  => 1,    # min: 30; OPTIONAL
          MinBufferTimeSeconds   => 1,    # max: 3600; OPTIONAL
          MinUpdatePeriodSeconds => 1,    # min: 1, max: 3600; OPTIONAL
          PeriodTriggers         => [
            'AVAILS',
            ... # values: AVAILS, DRM_KEY_ROTATION, SOURCE_CHANGES, SOURCE_DISRUPTIONS, NONE
          ],    # max: 100; OPTIONAL
          Profiles => [
            'DVB_DASH', ...    # values: DVB_DASH
          ],    # max: 5; OPTIONAL
          ProgramInformation => {
            Copyright => 'MyDashProgramInformationCopyrightString'
            ,    # min: 1, max: 2048; OPTIONAL
            LanguageCode => 'MyDashProgramInformationLanguageCodeString'
            ,    # min: 2, max: 5; OPTIONAL
            MoreInformationUrl =>
              'MyDashProgramInformationMoreInformationUrlString'
            ,    # min: 1, max: 2048; OPTIONAL
            Source => 'MyDashProgramInformationSourceString'
            ,    # min: 1, max: 2048; OPTIONAL
            Title => 'MyDashProgramInformationTitleString'
            ,    # min: 1, max: 2048; OPTIONAL
          },    # OPTIONAL
          ScteDash => {
            AdMarkerDash => 'BINARY',    # values: BINARY, XML; OPTIONAL
          },    # OPTIONAL
          SegmentTemplateFormat =>
            'NUMBER_WITH_TIMELINE',    # values: NUMBER_WITH_TIMELINE; OPTIONAL
          SubtitleConfiguration => {
            TtmlConfiguration => {
              TtmlProfile => 'IMSC_1',    # values: IMSC_1, EBU_TT_D_101

            },    # OPTIONAL
          },    # OPTIONAL
          SuggestedPresentationDelaySeconds => 1,    # max: 3600; OPTIONAL
          UtcTiming                         => {
            TimingMode => 'HTTP_HEAD'
            ,   # values: HTTP_HEAD, HTTP_ISO, HTTP_XSDATE, UTC_DIRECT; OPTIONAL
            TimingSource =>
              'MyDashUtcTimingTimingSourceString', # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description                     => 'MyResourceDescription',    # OPTIONAL
      ETag                            => 'MyEntityTag',              # OPTIONAL
      ForceEndpointErrorConfiguration => {
        EndpointErrorConditions => [
          'STALE_MANIFEST',
          ... # values: STALE_MANIFEST, INCOMPLETE_MANIFEST, MISSING_DRM_KEY, SLATE_INPUT
        ],    # OPTIONAL
      },    # OPTIONAL
      HlsManifests => [
        {
          ManifestName        => 'MyManifestName',    # min: 1, max: 256
          ChildManifestName   => 'MyManifestName',    # min: 1, max: 256
          FilterConfiguration => {
            ClipStartTime  => '1970-01-01T01:00:00',    # OPTIONAL
            End            => '1970-01-01T01:00:00',    # OPTIONAL
            ManifestFilter => 'MyFilterConfigurationManifestFilterString'
            ,    # min: 1, max: 1024; OPTIONAL
            Start            => '1970-01-01T01:00:00',  # OPTIONAL
            TimeDelaySeconds => 1,                      # max: 1209600; OPTIONAL
          },    # OPTIONAL
          ManifestWindowSeconds          => 1,  # min: 30; OPTIONAL
          ProgramDateTimeIntervalSeconds => 1,  # min: 1, max: 1209600; OPTIONAL
          ScteHls                        => {
            AdMarkerHls => 'DATERANGE',         # values: DATERANGE; OPTIONAL
          },    # OPTIONAL
          StartTag => {
            TimeOffset => 1.0,
            Precise    => 1,     # OPTIONAL
          },    # OPTIONAL
          UrlEncodeChildManifest => 1,    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LowLatencyHlsManifests => [
        {
          ManifestName        => 'MyManifestName',    # min: 1, max: 256
          ChildManifestName   => 'MyManifestName',    # min: 1, max: 256
          FilterConfiguration => {
            ClipStartTime  => '1970-01-01T01:00:00',    # OPTIONAL
            End            => '1970-01-01T01:00:00',    # OPTIONAL
            ManifestFilter => 'MyFilterConfigurationManifestFilterString'
            ,    # min: 1, max: 1024; OPTIONAL
            Start            => '1970-01-01T01:00:00',  # OPTIONAL
            TimeDelaySeconds => 1,                      # max: 1209600; OPTIONAL
          },    # OPTIONAL
          ManifestWindowSeconds          => 1,  # min: 30; OPTIONAL
          ProgramDateTimeIntervalSeconds => 1,  # min: 1, max: 1209600; OPTIONAL
          ScteHls                        => {
            AdMarkerHls => 'DATERANGE',         # values: DATERANGE; OPTIONAL
          },    # OPTIONAL
          StartTag => {
            TimeOffset => 1.0,
            Precise    => 1,     # OPTIONAL
          },    # OPTIONAL
          UrlEncodeChildManifest => 1,    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Segment => {
        Encryption => {
          EncryptionMethod => {
            CmafEncryptionMethod => 'CENC',    # values: CENC, CBCS; OPTIONAL
            TsEncryptionMethod   =>
              'AES_128',    # values: AES_128, SAMPLE_AES; OPTIONAL
          },
          SpekeKeyProvider => {
            DrmSystems => [
              'CLEAR_KEY_AES_128',
              ... # values: CLEAR_KEY_AES_128, FAIRPLAY, PLAYREADY, WIDEVINE, IRDETO
            ],    # min: 1, max: 4
            EncryptionContractConfiguration => {
              PresetSpeke20Audio => 'PRESET_AUDIO_1'
              , # values: PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED
              PresetSpeke20Video => 'PRESET_VIDEO_1'
              , # values: PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED

            },
            ResourceId =>
              'MySpekeKeyProviderResourceIdString',    # min: 1, max: 256
            RoleArn => 'MySpekeKeyProviderRoleArnString',    # min: 1, max: 2048
            Url     => 'MySpekeKeyProviderUrlString',        # min: 1, max: 1024

          },
          ConstantInitializationVector =>
            'MyEncryptionConstantInitializationVectorString'
          ,                                  # min: 32, max: 32; OPTIONAL
          KeyRotationIntervalSeconds => 1,   # min: 300, max: 31536000; OPTIONAL
        },    # OPTIONAL
        IncludeIframeOnlyStreams => 1,    # OPTIONAL
        Scte                     => {
          ScteFilter => [
            'SPLICE_INSERT',
            ... # values: SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY, PROGRAM
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        SegmentDurationSeconds => 1,       # min: 1, max: 30; OPTIONAL
        SegmentName            =>
          'MySegmentSegmentNameString',    # min: 1, max: 256; OPTIONAL
        TsIncludeDvbSubtitles    => 1,     # OPTIONAL
        TsUseAudioRenditionGroup => 1,     # OPTIONAL
      },    # OPTIONAL
      StartoverWindowSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateOriginEndpointResponse->Arn;
    my $ChannelGroupName = $UpdateOriginEndpointResponse->ChannelGroupName;
    my $ChannelName      = $UpdateOriginEndpointResponse->ChannelName;
    my $ContainerType    = $UpdateOriginEndpointResponse->ContainerType;
    my $CreatedAt        = $UpdateOriginEndpointResponse->CreatedAt;
    my $DashManifests    = $UpdateOriginEndpointResponse->DashManifests;
    my $Description      = $UpdateOriginEndpointResponse->Description;
    my $ETag             = $UpdateOriginEndpointResponse->ETag;
    my $ForceEndpointErrorConfiguration =
      $UpdateOriginEndpointResponse->ForceEndpointErrorConfiguration;
    my $HlsManifests = $UpdateOriginEndpointResponse->HlsManifests;
    my $LowLatencyHlsManifests =
      $UpdateOriginEndpointResponse->LowLatencyHlsManifests;
    my $ModifiedAt         = $UpdateOriginEndpointResponse->ModifiedAt;
    my $OriginEndpointName = $UpdateOriginEndpointResponse->OriginEndpointName;
    my $Segment            = $UpdateOriginEndpointResponse->Segment;
    my $StartoverWindowSeconds =
      $UpdateOriginEndpointResponse->StartoverWindowSeconds;
    my $Tags = $UpdateOriginEndpointResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::UpdateOriginEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/UpdateOriginEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.



=head2 B<REQUIRED> ContainerType => Str

The type of container attached to this origin endpoint. A container
type is a file format that encapsulates one or more media streams, such
as audio and video, into a single file.

Valid values are: C<"TS">, C<"CMAF">

=head2 DashManifests => ArrayRef[L<Paws::MediaPackageV2::CreateDashManifestConfiguration>]

A DASH manifest configuration.



=head2 Description => Str

Any descriptive information that you want to add to the origin endpoint
for future identification purposes.



=head2 ETag => Str

The expected current Entity Tag (ETag) for the resource. If the
specified ETag does not match the resource's current entity tag, the
update request will be rejected.



=head2 ForceEndpointErrorConfiguration => L<Paws::MediaPackageV2::ForceEndpointErrorConfiguration>

The failover settings for the endpoint.



=head2 HlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateHlsManifestConfiguration>]

An HTTP live streaming (HLS) manifest configuration.



=head2 LowLatencyHlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateLowLatencyHlsManifestConfiguration>]

A low-latency HLS manifest configuration.



=head2 B<REQUIRED> OriginEndpointName => Str

The name that describes the origin endpoint. The name is the primary
identifier for the origin endpoint, and and must be unique for your
account in the AWS Region and channel.



=head2 Segment => L<Paws::MediaPackageV2::Segment>

The segment configuration, including the segment name, duration, and
other configuration values.



=head2 StartoverWindowSeconds => Int

The size of the window (in seconds) to create a window of the live
stream that's available for on-demand viewing. Viewers can start-over
or catch-up on content that falls within the window. The maximum
startover window is 1,209,600 seconds (14 days).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOriginEndpoint in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

