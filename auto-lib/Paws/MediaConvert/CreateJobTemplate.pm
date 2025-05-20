
package Paws::MediaConvert::CreateJobTemplate;
  use Moose;
  has AccelerationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AccelerationSettings', traits => ['NameInRequest'], request_name => 'accelerationSettings');
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HopDestinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::HopDestination]', traits => ['NameInRequest'], request_name => 'hopDestinations');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has Queue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queue');
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::JobTemplateSettings', traits => ['NameInRequest'], request_name => 'settings', required => 1);
  has StatusUpdateInterval => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusUpdateInterval');
  has Tags => (is => 'ro', isa => 'Paws::MediaConvert::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/jobTemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::CreateJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJobTemplate - Arguments for method CreateJobTemplate on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobTemplate on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method CreateJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobTemplate.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $CreateJobTemplateResponse = $mediaconvert->CreateJobTemplate(
      Name     => 'My__string',
      Settings => {
        AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
        AvailBlanking => {
          AvailBlankingImage =>
            'My__stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG'
          ,                    # min: 14; OPTIONAL
        },    # OPTIONAL
        ColorConversion3DLUTSettings => [
          {
            FileInput => 'My__stringMin14PatternS3CubeCUBEHttpsCubeCUBE'
            ,                                     # min: 14; OPTIONAL
            InputColorSpace => 'FOLLOW'
            , # values: FOLLOW, REC_601, REC_709, HDR10, HLG_2020, P3DCI, P3D65_SDR, P3D65_HDR; OPTIONAL
            InputMasteringLuminance => 1,         # max: 2147483647; OPTIONAL
            OutputColorSpace        => 'FOLLOW'
            , # values: FOLLOW, REC_601, REC_709, HDR10, HLG_2020, P3DCI, P3D65_SDR, P3D65_HDR; OPTIONAL
            OutputMasteringLuminance => 1,    # max: 2147483647; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Esam => {
          ManifestConfirmConditionNotification => {
            MccXml =>
              'My__stringPatternSNManifestConfirmConditionNotificationNS'
            ,    # OPTIONAL
          },    # OPTIONAL
          ResponseSignalPreroll        => 1,    # max: 30000; OPTIONAL
          SignalProcessingNotification => {
            SccXml =>
              'My__stringPatternSNSignalProcessingNotificationNS',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ExtendedDataServices => {
          CopyProtectionAction =>
            'PASSTHROUGH',    # values: PASSTHROUGH, STRIP; OPTIONAL
          VchipAction => 'PASSTHROUGH',   # values: PASSTHROUGH, STRIP; OPTIONAL
        },    # OPTIONAL
        FollowSource => 1,    # min: 1, max: 150; OPTIONAL
        Inputs       => [
          {
            AdvancedInputFilter =>
              'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
            AdvancedInputFilterSettings => {
              AddTexture => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              Sharpening => 'OFF',        # values: OFF, LOW, HIGH; OPTIONAL
            },    # OPTIONAL
            AudioSelectorGroups => {
              'My__string' => {
                AudioSelectorNames => [
                  'My__stringMin1', ...    # min: 1
                ],    # OPTIONAL
              },
            },    # OPTIONAL
            AudioSelectors => {
              'My__string' => {
                AudioDurationCorrection => 'DISABLED'
                ,    # values: DISABLED, AUTO, TRACK, FRAME, FORCE; OPTIONAL
                CustomLanguageCode =>
                  'My__stringMin3Max3PatternAZaZ3',   # min: 3, max: 3; OPTIONAL
                DefaultSelection =>
                  'DEFAULT',    # values: DEFAULT, NOT_DEFAULT; OPTIONAL
                ExternalAudioFileInput => 'My__stringPatternS3Https', # OPTIONAL
                HlsRenditionGroupSettings => {
                  RenditionGroupId      => 'My__string',
                  RenditionLanguageCode => 'ENG'
                  , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                  RenditionName => 'My__string',
                },    # OPTIONAL
                LanguageCode => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                Offset => 1,    # min: -2147483648, max: 2147483647; OPTIONAL
                Pids   => [
                  1, ...        # min: 1, max: 2147483647
                ],    # OPTIONAL
                ProgramSelection => 1,    # max: 8; OPTIONAL
                RemixSettings    => {
                  AudioDescriptionAudioChannel => 1, # min: 1, max: 64; OPTIONAL
                  AudioDescriptionDataChannel  => 1, # min: 1, max: 64; OPTIONAL
                  ChannelMapping               => {
                    OutputChannels => [
                      {
                        InputChannels => [
                          1, ...    # min: -60, max: 6
                        ],    # OPTIONAL
                        InputChannelsFineTune => [ 1, ... ],    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  ChannelsIn  => 1,    # min: 1, max: 64; OPTIONAL
                  ChannelsOut => 1,    # min: 1, max: 64; OPTIONAL
                },    # OPTIONAL
                SelectorType => 'PID'
                , # values: PID, TRACK, LANGUAGE_CODE, HLS_RENDITION_GROUP, ALL_PCM; OPTIONAL
                Tracks => [
                  1, ...    # min: 1, max: 2147483647
                ],    # OPTIONAL
              },
            },    # OPTIONAL
            CaptionSelectors => {
              'My__string' => {
                CustomLanguageCode =>
                  'My__stringMin3Max3PatternAZaZ3',   # min: 3, max: 3; OPTIONAL
                LanguageCode => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                SourceSettings => {
                  AncillarySourceSettings => {
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    SourceAncillaryChannelNumber =>
                      1,              # min: 1, max: 4; OPTIONAL
                    TerminateCaptions =>
                      'END_OF_INPUT', # values: END_OF_INPUT, DISABLED; OPTIONAL
                  },    # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,    # min: 1, max: 2147483647
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4; OPTIONAL
                    Source608TrackNumber   => 1,    # min: 1, max: 1; OPTIONAL
                    TerminateCaptions      =>
                      'END_OF_INPUT', # values: END_OF_INPUT, DISABLED; OPTIONAL
                  },    # OPTIONAL
                  FileSourceSettings => {
                    ByteRateLimit =>
                      'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    ConvertPaintToPop =>
                      'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
                    Framerate => {
                      FramerateDenominator => 1,  # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1,  # min: 1, max: 60000; OPTIONAL
                    },    # OPTIONAL
                    SourceFile =>
'My__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTTHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTT'
                    ,       # min: 14; OPTIONAL
                    TimeDelta =>
                      1,    # min: -2147483648, max: 2147483647; OPTIONAL
                    TimeDeltaUnits =>
                      'SECONDS',    # values: SECONDS, MILLISECONDS; OPTIONAL
                    UpconvertSTLToTeletext =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                  },    # OPTIONAL
                  SourceType => 'ANCILLARY'
                  , # values: ANCILLARY, DVB_SUB, EMBEDDED, SCTE20, SCC, TTML, STL, SRT, SMI, SMPTE_TT, TELETEXT, NULL_SOURCE, IMSC, WEBVTT; OPTIONAL
                  TeletextSourceSettings => {
                    PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                    ,    # min: 3, max: 3; OPTIONAL
                  },    # OPTIONAL
                  TrackSourceSettings => {
                    TrackNumber => 1,    # min: 1, max: 2147483647
                  },    # OPTIONAL
                  WebvttHlsSourceSettings => {
                    RenditionGroupId      => 'My__string',
                    RenditionLanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                    RenditionName => 'My__string',
                  },    # OPTIONAL
                },    # OPTIONAL
              },
            },    # OPTIONAL
            Crop => {
              Height => 1,    # min: 2, max: 2147483647; OPTIONAL
              Width  => 1,    # min: 2, max: 2147483647; OPTIONAL
              X      => 1,    # max: 2147483647; OPTIONAL
              Y      => 1,    # max: 2147483647; OPTIONAL
            },    # OPTIONAL
            DeblockFilter => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            DenoiseFilter => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            DolbyVisionMetadataXml =>
              'My__stringMin14PatternS3XmlXMLHttpsXmlXML',   # min: 14; OPTIONAL
            DynamicAudioSelectors => {
              'My__string' => {
                AudioDurationCorrection => 'DISABLED'
                ,    # values: DISABLED, AUTO, TRACK, FRAME, FORCE; OPTIONAL
                ExternalAudioFileInput => 'My__stringPatternS3Https', # OPTIONAL
                LanguageCode           => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                Offset       => 1, # min: -2147483648, max: 2147483647; OPTIONAL
                SelectorType =>
                  'ALL_TRACKS',    # values: ALL_TRACKS, LANGUAGE_CODE; OPTIONAL
              },
            },    # OPTIONAL
            FilterEnable   => 'AUTO',   # values: AUTO, DISABLE, FORCE; OPTIONAL
            FilterStrength => 1,        # max: 5; OPTIONAL
            ImageInserter  => {
              InsertableImages => [
                {
                  Duration           => 1,    # max: 2147483647; OPTIONAL
                  FadeIn             => 1,    # max: 2147483647; OPTIONAL
                  FadeOut            => 1,    # max: 2147483647; OPTIONAL
                  Height             => 1,    # max: 2147483647; OPTIONAL
                  ImageInserterInput =>
'My__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA'
                  ,                           # min: 14; OPTIONAL
                  ImageX    => 1,             # max: 2147483647; OPTIONAL
                  ImageY    => 1,             # max: 2147483647; OPTIONAL
                  Layer     => 1,             # max: 99; OPTIONAL
                  Opacity   => 1,             # max: 100; OPTIONAL
                  StartTime => 'My__stringPattern01D20305D205D',    # OPTIONAL
                  Width     => 1,    # max: 2147483647; OPTIONAL
                },
                ...
              ],    # OPTIONAL
              SdrReferenceWhiteLevel => 1,    # min: 100, max: 1000; OPTIONAL
            },    # OPTIONAL
            InputClippings => [
              {
                EndTimecode =>
                  'My__stringPattern010920405090509092090909',    # OPTIONAL
                StartTimecode =>
                  'My__stringPattern010920405090509092090909',    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            InputScanType => 'AUTO',    # values: AUTO, PSF; OPTIONAL
            Position      => {
              Height => 1,              # min: 2, max: 2147483647; OPTIONAL
              Width  => 1,              # min: 2, max: 2147483647; OPTIONAL
              X      => 1,              # max: 2147483647; OPTIONAL
              Y      => 1,              # max: 2147483647; OPTIONAL
            },    # OPTIONAL
            ProgramNumber => 1,          # min: 1, max: 2147483647
            PsiControl => 'IGNORE_PSI',  # values: IGNORE_PSI, USE_PSI; OPTIONAL
            TimecodeSource => 'EMBEDDED'
            ,    # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
            TimecodeStart => 'My__stringMin11Max11Pattern01D20305D205D'
            ,    # min: 11, max: 11; OPTIONAL
            VideoOverlays => [
              {
                Crop => {
                  Height => 1,           # max: 2147483647; OPTIONAL
                  Unit   => 'PIXELS',    # values: PIXELS, PERCENTAGE; OPTIONAL
                  Width  => 1,           # max: 2147483647; OPTIONAL
                  X      => 1,           # max: 2147483647; OPTIONAL
                  Y      => 1,           # max: 2147483647; OPTIONAL
                },    # OPTIONAL
                EndTimecode => 'My__stringPattern010920405090509092', # OPTIONAL
                InitialPosition => {
                  Height    => 1,         # min: -1, max: 2147483647; OPTIONAL
                  Unit      => 'PIXELS',  # values: PIXELS, PERCENTAGE; OPTIONAL
                  Width     => 1,         # min: -1, max: 2147483647; OPTIONAL
                  XPosition => 1,  # min: -2147483648, max: 2147483647; OPTIONAL
                  YPosition => 1,  # min: -2147483648, max: 2147483647; OPTIONAL
                },    # OPTIONAL
                Input => {
                  FileInput      => 'My__stringPatternS3Https',    # OPTIONAL
                  InputClippings => [
                    {
                      EndTimecode =>
                        'My__stringPattern010920405090509092090909',  # OPTIONAL
                      StartTimecode =>
                        'My__stringPattern010920405090509092090909',  # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  TimecodeSource => 'EMBEDDED'
                  ,     # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
                  TimecodeStart => 'My__stringMin11Max11Pattern01D20305D205D'
                  ,     # min: 11, max: 11; OPTIONAL
                },    # OPTIONAL
                Playback      => 'ONCE',    # values: ONCE, REPEAT; OPTIONAL
                StartTimecode =>
                  'My__stringPattern010920405090509092',    # OPTIONAL
                Transitions => [
                  {
                    EndPosition => {
                      Height => 1,        # min: -1, max: 2147483647; OPTIONAL
                      Unit   => 'PIXELS', # values: PIXELS, PERCENTAGE; OPTIONAL
                      Width  => 1,        # min: -1, max: 2147483647; OPTIONAL
                      XPosition =>
                        1,    # min: -2147483648, max: 2147483647; OPTIONAL
                      YPosition =>
                        1,    # min: -2147483648, max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                    EndTimecode =>
                      'My__stringPattern010920405090509092',    # OPTIONAL
                    StartTimecode =>
                      'My__stringPattern010920405090509092',    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            VideoSelector => {
              AlphaBehavior =>
                'DISCARD',    # values: DISCARD, REMAP_TO_LUMA; OPTIONAL
              ColorSpace => 'FOLLOW'
              , # values: FOLLOW, REC_601, REC_709, HDR10, HLG_2020, P3DCI, P3D65_SDR, P3D65_HDR; OPTIONAL
              ColorSpaceUsage => 'FORCE',    # values: FORCE, FALLBACK; OPTIONAL
              EmbeddedTimecodeOverride =>
                'NONE',                      # values: NONE, USE_MDPM; OPTIONAL
              Hdr10Metadata => {
                BluePrimaryX              => 1,    # max: 50000; OPTIONAL
                BluePrimaryY              => 1,    # max: 50000; OPTIONAL
                GreenPrimaryX             => 1,    # max: 50000; OPTIONAL
                GreenPrimaryY             => 1,    # max: 50000; OPTIONAL
                MaxContentLightLevel      => 1,    # max: 65535; OPTIONAL
                MaxFrameAverageLightLevel => 1,    # max: 65535; OPTIONAL
                MaxLuminance              => 1,    # max: 2147483647; OPTIONAL
                MinLuminance              => 1,    # max: 2147483647; OPTIONAL
                RedPrimaryX               => 1,    # max: 50000; OPTIONAL
                RedPrimaryY               => 1,    # max: 50000; OPTIONAL
                WhitePointX               => 1,    # max: 50000; OPTIONAL
                WhitePointY               => 1,    # max: 50000; OPTIONAL
              },    # OPTIONAL
              MaxLuminance  => 1,            # max: 2147483647; OPTIONAL
              PadVideo      => 'DISABLED',   # values: DISABLED, BLACK; OPTIONAL
              Pid           => 1,            # min: 1, max: 2147483647
              ProgramNumber => 1,  # min: -2147483648, max: 2147483647; OPTIONAL
              Rotate        => 'DEGREE_0'
              , # values: DEGREE_0, DEGREES_90, DEGREES_180, DEGREES_270, AUTO; OPTIONAL
              SampleRange =>
                'FOLLOW',  # values: FOLLOW, FULL_RANGE, LIMITED_RANGE; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        KantarWatermark => {
          ChannelName      => 'My__stringMin1Max20', # min: 1, max: 20; OPTIONAL
          ContentReference =>
            'My__stringMin1Max50PatternAZAZ09',      # min: 1, max: 50; OPTIONAL
          CredentialsSecretName =>
            'My__stringMin1Max2048PatternArnAZSecretsmanagerWD12SecretAZAZ09'
          ,    # min: 1, max: 2048; OPTIONAL
          FileOffset      => 1,    # OPTIONAL
          KantarLicenseId => 1,    # max: 2147483647; OPTIONAL
          KantarServerUrl => 'My__stringPatternHttpsKantarmedia',    # OPTIONAL
          LogDestination  => 'My__stringPatternS3',                  # OPTIONAL
          Metadata3       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
          Metadata4       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
          Metadata5       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
          Metadata6       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
          Metadata7       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
          Metadata8       => 'My__stringMin1Max50',  # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
        MotionImageInserter => {
          Framerate => {
            FramerateDenominator => 1,    # min: 1, max: 17895697; OPTIONAL
            FramerateNumerator   => 1,    # min: 1, max: 2147483640; OPTIONAL
          },    # OPTIONAL
          Input =>
            'My__stringMin14PatternS3Mov09PngHttpsMov09Png', # min: 14; OPTIONAL
          InsertionMode => 'MOV',    # values: MOV, PNG; OPTIONAL
          Offset        => {
            ImageX => 1,             # max: 2147483647; OPTIONAL
            ImageY => 1,             # max: 2147483647; OPTIONAL
          },    # OPTIONAL
          Playback  => 'ONCE',    # values: ONCE, REPEAT; OPTIONAL
          StartTime => 'My__stringMin11Max11Pattern01D20305D205D'
          ,                       # min: 11, max: 11; OPTIONAL
        },    # OPTIONAL
        NielsenConfiguration => {
          BreakoutCode  => 1,              # OPTIONAL
          DistributorId => 'My__string',
        },    # OPTIONAL
        NielsenNonLinearWatermark => {
          ActiveWatermarkProcess => 'NAES2_AND_NW'
          ,    # values: NAES2_AND_NW, CBET, NAES2_AND_NW_AND_CBET; OPTIONAL
          AdiFilename  => 'My__stringPatternS3',    # OPTIONAL
          AssetId      => 'My__stringMin1Max20',    # min: 1, max: 20; OPTIONAL
          AssetName    => 'My__stringMin1Max50',    # min: 1, max: 50; OPTIONAL
          CbetSourceId => 'My__stringPattern0xAFaF0908190908',    # OPTIONAL
          EpisodeId    => 'My__stringMin1Max20',    # min: 1, max: 20; OPTIONAL
          MetadataDestination   => 'My__stringPatternS3', # OPTIONAL
          SourceId              => 1,                     # max: 65534; OPTIONAL
          SourceWatermarkStatus =>
            'CLEAN',    # values: CLEAN, WATERMARKED; OPTIONAL
          TicServerUrl           => 'My__stringPatternHttps',         # OPTIONAL
          UniqueTicPerAudioTrack => 'RESERVE_UNIQUE_TICS_PER_TRACK'
          , # values: RESERVE_UNIQUE_TICS_PER_TRACK, SAME_TICS_PER_TRACK; OPTIONAL
        },    # OPTIONAL
        OutputGroups => [
          {
            AutomatedEncodingSettings => {
              AbrSettings => {
                MaxAbrBitrate   => 1,    # min: 100000, max: 100000000; OPTIONAL
                MaxQualityLevel => 1,    # OPTIONAL
                MaxRenditions   => 1,    # min: 3, max: 15; OPTIONAL
                MinAbrBitrate   => 1,    # min: 100000, max: 100000000; OPTIONAL
                Rules           => [
                  {
                    AllowedRenditions => [
                      {
                        Height   => 1,    # min: 32, max: 8192; OPTIONAL
                        Required =>
                          'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
                        Width => 1,       # min: 32, max: 8192; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    ForceIncludeRenditions => [
                      {
                        Height => 1,    # min: 32, max: 8192; OPTIONAL
                        Width  => 1,    # min: 32, max: 8192; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    MinBottomRenditionSize => {
                      Height => 1,    # min: 32, max: 8192; OPTIONAL
                      Width  => 1,    # min: 32, max: 8192; OPTIONAL
                    },    # OPTIONAL
                    MinTopRenditionSize => {
                      Height => 1,    # min: 32, max: 8192; OPTIONAL
                      Width  => 1,    # min: 32, max: 8192; OPTIONAL
                    },    # OPTIONAL
                    Type => 'MIN_TOP_RENDITION_SIZE'
                    , # values: MIN_TOP_RENDITION_SIZE, MIN_BOTTOM_RENDITION_SIZE, FORCE_INCLUDE_RENDITIONS, ALLOWED_RENDITIONS; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            CustomName          => 'My__string',
            Name                => 'My__stringMax2048',    # max: 2048; OPTIONAL
            OutputGroupSettings => {
              CmafGroupSettings => {
                AdditionalManifests => [
                  {
                    ManifestNameModifier => 'My__stringMin1',    # min: 1
                    SelectedOutputs      => [
                      'My__stringMin1', ...                      # min: 1
                    ],    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                BaseUrl     => 'My__string',
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                CodecSpecification =>
                  'RFC_6381',    # values: RFC_6381, RFC_4281; OPTIONAL
                DashIFrameTrickPlayNameModifier =>
                  'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                DashManifestStyle =>
                  'BASIC',    # values: BASIC, COMPACT, DISTINCT; OPTIONAL
                Destination         => 'My__stringPatternS3',    # OPTIONAL
                DestinationSettings => {
                  S3Settings => {
                    AccessControl => {
                      CannedAcl => 'PUBLIC_READ'
                      , # values: PUBLIC_READ, AUTHENTICATED_READ, BUCKET_OWNER_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
                    },    # OPTIONAL
                    Encryption => {
                      EncryptionType => 'SERVER_SIDE_ENCRYPTION_S3'
                      , # values: SERVER_SIDE_ENCRYPTION_S3, SERVER_SIDE_ENCRYPTION_KMS; OPTIONAL
                      KmsEncryptionContext =>
                        'My__stringPatternAZaZ0902',    # OPTIONAL
                      KmsKeyArn =>
'My__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932'
                      ,                                 # OPTIONAL
                    },    # OPTIONAL
                    StorageClass => 'STANDARD'
                    , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Encryption => {
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,                  # min: 32, max: 32; OPTIONAL
                  EncryptionMethod =>
                    'SAMPLE_AES',    # values: SAMPLE_AES, AES_CTR; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',       # values: INCLUDE, EXCLUDE; OPTIONAL
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    DashSignaledSystemIds => [
'My__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...                                   # min: 36, max: 36
                    ],    # OPTIONAL
                    EncryptionContractConfiguration => {
                      SpekeAudioPreset => 'PRESET_AUDIO_1'
                      , # values: PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED; OPTIONAL
                      SpekeVideoPreset => 'PRESET_VIDEO_1'
                      , # values: PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED; OPTIONAL
                    },    # OPTIONAL
                    HlsSignaledSystemIds => [
'My__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...    # min: 36, max: 36
                    ],    # OPTIONAL
                    ResourceId => 'My__stringPatternW',         # OPTIONAL
                    Url        => 'My__stringPatternHttpsD',    # OPTIONAL
                  },    # OPTIONAL
                  StaticKeyProvider => {
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',    # OPTIONAL
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    StaticKeyValue    => 'My__stringPatternAZaZ0932', # OPTIONAL
                    Url               => 'My__string',
                  },    # OPTIONAL
                  Type => 'SPEKE',    # values: SPEKE, STATIC_KEY; OPTIONAL
                },    # OPTIONAL
                FragmentLength      => 1,       # min: 1, max: 2147483647
                ImageBasedTrickPlay => 'NONE'
                , # values: NONE, THUMBNAIL, THUMBNAIL_AND_FULLFRAME, ADVANCED; OPTIONAL
                ImageBasedTrickPlaySettings => {
                  IntervalCadence => 'FOLLOW_IFRAME'
                  ,    # values: FOLLOW_IFRAME, FOLLOW_CUSTOM; OPTIONAL
                  ThumbnailHeight   => 1,    # min: 2, max: 4096; OPTIONAL
                  ThumbnailInterval => 1,    # OPTIONAL
                  ThumbnailWidth    => 1,    # min: 8, max: 4096; OPTIONAL
                  TileHeight        => 1,    # min: 1, max: 2048; OPTIONAL
                  TileWidth         => 1,    # min: 1, max: 512; OPTIONAL
                },    # OPTIONAL
                ManifestCompression    => 'GZIP', # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                MinBufferTime            => 1,    # max: 2147483647; OPTIONAL
                MinFinalSegmentLength    => 1,    # OPTIONAL
                MpdManifestBandwidthType =>
                  'AVERAGE',    # values: AVERAGE, MAX; OPTIONAL
                MpdProfile => 'MAIN_PROFILE'
                ,    # values: MAIN_PROFILE, ON_DEMAND_PROFILE; OPTIONAL
                PtsOffsetHandlingForBFrames => 'ZERO_BASED'
                ,    # values: ZERO_BASED, MATCH_INITIAL_PTS; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength        => 1,    # min: 1, max: 2147483647
                SegmentLengthControl =>
                  'EXACT',    # values: EXACT, GOP_MULTIPLE, MATCH; OPTIONAL
                StreamInfResolution =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                TargetDurationCompatibilityMode =>
                  'LEGACY',     # values: LEGACY, SPEC_COMPLIANT; OPTIONAL
                VideoCompositionOffsets =>
                  'SIGNED',     # values: SIGNED, UNSIGNED; OPTIONAL
                WriteDashManifest =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                WriteHlsManifest =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                WriteSegmentTimelineInRepresentation =>
                  'ENABLED',     # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
              DashIsoGroupSettings => {
                AdditionalManifests => [
                  {
                    ManifestNameModifier => 'My__stringMin1',    # min: 1
                    SelectedOutputs      => [
                      'My__stringMin1', ...                      # min: 1
                    ],    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                AudioChannelConfigSchemeIdUri => 'MPEG_CHANNEL_CONFIGURATION'
                , # values: MPEG_CHANNEL_CONFIGURATION, DOLBY_CHANNEL_CONFIGURATION; OPTIONAL
                BaseUrl                         => 'My__string',
                DashIFrameTrickPlayNameModifier =>
                  'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                DashManifestStyle =>
                  'BASIC',    # values: BASIC, COMPACT, DISTINCT; OPTIONAL
                Destination         => 'My__stringPatternS3',    # OPTIONAL
                DestinationSettings => {
                  S3Settings => {
                    AccessControl => {
                      CannedAcl => 'PUBLIC_READ'
                      , # values: PUBLIC_READ, AUTHENTICATED_READ, BUCKET_OWNER_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
                    },    # OPTIONAL
                    Encryption => {
                      EncryptionType => 'SERVER_SIDE_ENCRYPTION_S3'
                      , # values: SERVER_SIDE_ENCRYPTION_S3, SERVER_SIDE_ENCRYPTION_KMS; OPTIONAL
                      KmsEncryptionContext =>
                        'My__stringPatternAZaZ0902',    # OPTIONAL
                      KmsKeyArn =>
'My__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932'
                      ,                                 # OPTIONAL
                    },    # OPTIONAL
                    StorageClass => 'STANDARD'
                    , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Encryption => {
                  PlaybackDeviceCompatibility =>
                    'CENC_V1',    # values: CENC_V1, UNENCRYPTED_SEI; OPTIONAL
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    EncryptionContractConfiguration => {
                      SpekeAudioPreset => 'PRESET_AUDIO_1'
                      , # values: PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED; OPTIONAL
                      SpekeVideoPreset => 'PRESET_VIDEO_1'
                      , # values: PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED; OPTIONAL
                    },    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],    # OPTIONAL
                    Url => 'My__stringPatternHttpsD',    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                FragmentLength  => 1,    # min: 1, max: 2147483647
                HbbtvCompliance =>
                  'HBBTV_1_5',           # values: HBBTV_1_5, NONE; OPTIONAL
                ImageBasedTrickPlay => 'NONE'
                , # values: NONE, THUMBNAIL, THUMBNAIL_AND_FULLFRAME, ADVANCED; OPTIONAL
                ImageBasedTrickPlaySettings => {
                  IntervalCadence => 'FOLLOW_IFRAME'
                  ,    # values: FOLLOW_IFRAME, FOLLOW_CUSTOM; OPTIONAL
                  ThumbnailHeight   => 1,    # min: 1, max: 4096; OPTIONAL
                  ThumbnailInterval => 1,    # OPTIONAL
                  ThumbnailWidth    => 1,    # min: 8, max: 4096; OPTIONAL
                  TileHeight        => 1,    # min: 1, max: 2048; OPTIONAL
                  TileWidth         => 1,    # min: 1, max: 512; OPTIONAL
                },    # OPTIONAL
                MinBufferTime            => 1,    # max: 2147483647; OPTIONAL
                MinFinalSegmentLength    => 1,    # OPTIONAL
                MpdManifestBandwidthType =>
                  'AVERAGE',    # values: AVERAGE, MAX; OPTIONAL
                MpdProfile => 'MAIN_PROFILE'
                ,    # values: MAIN_PROFILE, ON_DEMAND_PROFILE; OPTIONAL
                PtsOffsetHandlingForBFrames => 'ZERO_BASED'
                ,    # values: ZERO_BASED, MATCH_INITIAL_PTS; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength        => 1,    # min: 1, max: 2147483647
                SegmentLengthControl =>
                  'EXACT',    # values: EXACT, GOP_MULTIPLE, MATCH; OPTIONAL
                VideoCompositionOffsets =>
                  'SIGNED',    # values: SIGNED, UNSIGNED; OPTIONAL
                WriteSegmentTimelineInRepresentation =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
              FileGroupSettings => {
                Destination         => 'My__stringPatternS3',    # OPTIONAL
                DestinationSettings => {
                  S3Settings => {
                    AccessControl => {
                      CannedAcl => 'PUBLIC_READ'
                      , # values: PUBLIC_READ, AUTHENTICATED_READ, BUCKET_OWNER_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
                    },    # OPTIONAL
                    Encryption => {
                      EncryptionType => 'SERVER_SIDE_ENCRYPTION_S3'
                      , # values: SERVER_SIDE_ENCRYPTION_S3, SERVER_SIDE_ENCRYPTION_KMS; OPTIONAL
                      KmsEncryptionContext =>
                        'My__stringPatternAZaZ0902',    # OPTIONAL
                      KmsKeyArn =>
'My__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932'
                      ,                                 # OPTIONAL
                    },    # OPTIONAL
                    StorageClass => 'STANDARD'
                    , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              HlsGroupSettings => {
                AdMarkers => [
                  'ELEMENTAL', ...    # values: ELEMENTAL, ELEMENTAL_SCTE35
                ],    # OPTIONAL
                AdditionalManifests => [
                  {
                    ManifestNameModifier => 'My__stringMin1',    # min: 1
                    SelectedOutputs      => [
                      'My__stringMin1', ...                      # min: 1
                    ],    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                AudioOnlyHeader =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                BaseUrl                 => 'My__string',
                CaptionLanguageMappings => [
                  {
                    CaptionChannel =>
                      1,    # min: -2147483648, max: 2147483647; OPTIONAL
                    CustomLanguageCode => 'My__stringMin3Max3PatternAZaZ3'
                    ,       # min: 3, max: 3; OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                    LanguageDescription => 'My__string',
                  },
                  ...
                ],    # OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',    # values: INSERT, OMIT, NONE; OPTIONAL
                CaptionSegmentLengthControl => 'LARGE_SEGMENTS'
                ,              # values: LARGE_SEGMENTS, MATCH_VIDEO; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                CodecSpecification =>
                  'RFC_6381',    # values: RFC_6381, RFC_4281; OPTIONAL
                Destination         => 'My__stringPatternS3',    # OPTIONAL
                DestinationSettings => {
                  S3Settings => {
                    AccessControl => {
                      CannedAcl => 'PUBLIC_READ'
                      , # values: PUBLIC_READ, AUTHENTICATED_READ, BUCKET_OWNER_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
                    },    # OPTIONAL
                    Encryption => {
                      EncryptionType => 'SERVER_SIDE_ENCRYPTION_S3'
                      , # values: SERVER_SIDE_ENCRYPTION_S3, SERVER_SIDE_ENCRYPTION_KMS; OPTIONAL
                      KmsEncryptionContext =>
                        'My__stringPatternAZaZ0902',    # OPTIONAL
                      KmsKeyArn =>
'My__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932'
                      ,                                 # OPTIONAL
                    },    # OPTIONAL
                    StorageClass => 'STANDARD'
                    , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                Encryption => {
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,              # min: 32, max: 32; OPTIONAL
                  EncryptionMethod =>
                    'AES128',    # values: AES128, SAMPLE_AES; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                  OfflineEncrypted =>
                    'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    EncryptionContractConfiguration => {
                      SpekeAudioPreset => 'PRESET_AUDIO_1'
                      , # values: PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED; OPTIONAL
                      SpekeVideoPreset => 'PRESET_VIDEO_1'
                      , # values: PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED; OPTIONAL
                    },    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],    # OPTIONAL
                    Url => 'My__stringPatternHttpsD',    # OPTIONAL
                  },    # OPTIONAL
                  StaticKeyProvider => {
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',    # OPTIONAL
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    StaticKeyValue    => 'My__stringPatternAZaZ0932', # OPTIONAL
                    Url               => 'My__string',
                  },    # OPTIONAL
                  Type => 'SPEKE',    # values: SPEKE, STATIC_KEY; OPTIONAL
                },    # OPTIONAL
                ImageBasedTrickPlay => 'NONE'
                , # values: NONE, THUMBNAIL, THUMBNAIL_AND_FULLFRAME, ADVANCED; OPTIONAL
                ImageBasedTrickPlaySettings => {
                  IntervalCadence => 'FOLLOW_IFRAME'
                  ,    # values: FOLLOW_IFRAME, FOLLOW_CUSTOM; OPTIONAL
                  ThumbnailHeight   => 1,    # min: 2, max: 4096; OPTIONAL
                  ThumbnailInterval => 1,    # OPTIONAL
                  ThumbnailWidth    => 1,    # min: 8, max: 4096; OPTIONAL
                  TileHeight        => 1,    # min: 1, max: 2048; OPTIONAL
                  TileWidth         => 1,    # min: 1, max: 512; OPTIONAL
                },    # OPTIONAL
                ManifestCompression    => 'GZIP', # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                MinFinalSegmentLength => 1,    # OPTIONAL
                MinSegmentLength      => 1,    # max: 2147483647; OPTIONAL
                OutputSelection       => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                ProgramDateTime =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                ProgramDateTimePeriod       => 1,    # max: 3600; OPTIONAL
                ProgressiveWriteHlsManifest =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,               # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength        => 1,    # min: 1, max: 2147483647
                SegmentLengthControl =>
                  'EXACT',    # values: EXACT, GOP_MULTIPLE, MATCH; OPTIONAL
                SegmentsPerSubdirectory => 1,    # min: 1, max: 2147483647
                StreamInfResolution     =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                TargetDurationCompatibilityMode =>
                  'LEGACY',     # values: LEGACY, SPEC_COMPLIANT; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',       # values: NONE, PRIV, TDRL; OPTIONAL
                TimedMetadataId3Period =>
                  1,            # min: -2147483648, max: 2147483647; OPTIONAL
                TimestampDeltaMilliseconds =>
                  1,            # min: -2147483648, max: 2147483647; OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                AdditionalManifests => [
                  {
                    ManifestNameModifier => 'My__stringMin1',    # min: 1
                    SelectedOutputs      => [
                      'My__stringMin1', ...                      # min: 1
                    ],    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                AudioDeduplication => 'COMBINE_DUPLICATE_STREAMS'
                ,     # values: COMBINE_DUPLICATE_STREAMS, NONE; OPTIONAL
                Destination         => 'My__stringPatternS3',    # OPTIONAL
                DestinationSettings => {
                  S3Settings => {
                    AccessControl => {
                      CannedAcl => 'PUBLIC_READ'
                      , # values: PUBLIC_READ, AUTHENTICATED_READ, BUCKET_OWNER_READ, BUCKET_OWNER_FULL_CONTROL; OPTIONAL
                    },    # OPTIONAL
                    Encryption => {
                      EncryptionType => 'SERVER_SIDE_ENCRYPTION_S3'
                      , # values: SERVER_SIDE_ENCRYPTION_S3, SERVER_SIDE_ENCRYPTION_KMS; OPTIONAL
                      KmsEncryptionContext =>
                        'My__stringPatternAZaZ0902',    # OPTIONAL
                      KmsKeyArn =>
'My__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932'
                      ,                                 # OPTIONAL
                    },    # OPTIONAL
                    StorageClass => 'STANDARD'
                    , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Encryption => {
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    EncryptionContractConfiguration => {
                      SpekeAudioPreset => 'PRESET_AUDIO_1'
                      , # values: PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED; OPTIONAL
                      SpekeVideoPreset => 'PRESET_VIDEO_1'
                      , # values: PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED; OPTIONAL
                    },    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],    # OPTIONAL
                    Url => 'My__stringPatternHttpsD',    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                FragmentLength        => 1,    # min: 1, max: 2147483647
                FragmentLengthControl =>
                  'EXACT',    # values: EXACT, GOP_MULTIPLE; OPTIONAL
                ManifestEncoding => 'UTF8',    # values: UTF8, UTF16; OPTIONAL
              },    # OPTIONAL
              PerFrameMetrics => [
                'PSNR', ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
              ],    # OPTIONAL
              Type => 'HLS_GROUP_SETTINGS'
              , # values: HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS; OPTIONAL
            },    # OPTIONAL
            Outputs => [
              {
                AudioDescriptions => [
                  {
                    AudioChannelTaggingSettings => {
                      ChannelTag => 'L'
                      , # values: L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M; OPTIONAL
                      ChannelTags => [
                        'L',
                        ... # values: L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M; OPTIONAL
                      ],    # OPTIONAL
                    },    # OPTIONAL
                    AudioNormalizationSettings => {
                      Algorithm => 'ITU_BS_1770_1'
                      , # values: ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4; OPTIONAL
                      AlgorithmControl => 'CORRECT_AUDIO'
                      ,    # values: CORRECT_AUDIO, MEASURE_ONLY; OPTIONAL
                      CorrectionGateLevel => 1,    # min: -70; OPTIONAL
                      LoudnessLogging     =>
                        'LOG',    # values: LOG, DONT_LOG; OPTIONAL
                      PeakCalculation =>
                        'TRUE_PEAK',    # values: TRUE_PEAK, NONE; OPTIONAL
                      TargetLkfs               => 1,    # OPTIONAL
                      TruePeakLimiterThreshold => 1,    # OPTIONAL
                    },    # OPTIONAL
                    AudioSourceName =>
                      'My__stringMax2048',    # max: 2048; OPTIONAL
                    AudioType        => 1,               # max: 255; OPTIONAL
                    AudioTypeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    CodecSettings => {
                      AacSettings => {
                        AudioDescriptionBroadcasterMix => 'BROADCASTER_MIXED_AD'
                        ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                        Bitrate      => 1,   # min: 6000, max: 1024000; OPTIONAL
                        CodecProfile => 'LC', # values: LC, HEV1, HEV2; OPTIONAL
                        CodingMode   => 'AD_RECEIVER_MIX'
                        , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                        RateControlMode => 'CBR',   # values: CBR, VBR; OPTIONAL
                        RawFormat       =>
                          'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                        SampleRate    => 1,    # min: 8000, max: 96000; OPTIONAL
                        Specification =>
                          'MPEG2',             # values: MPEG2, MPEG4; OPTIONAL
                        VbrQuality => 'LOW'
                        , # values: LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH; OPTIONAL
                      },    # OPTIONAL
                      Ac3Settings => {
                        Bitrate       => 1,  # min: 64000, max: 640000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                        Dialnorm => 1,    # min: 1, max: 31; OPTIONAL
                        DynamicRangeCompressionLine => 'FILM_STANDARD'
                        , # values: FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE; OPTIONAL
                        DynamicRangeCompressionProfile => 'FILM_STANDARD'
                        ,    # values: FILM_STANDARD, NONE; OPTIONAL
                        DynamicRangeCompressionRf => 'FILM_STANDARD'
                        , # values: FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE; OPTIONAL
                        LfeFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        MetadataControl => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        SampleRate => 1,    # min: 48000, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      AiffSettings => {
                        BitDepth   => 1,    # min: 16, max: 24; OPTIONAL
                        Channels   => 1,    # min: 1, max: 64; OPTIONAL
                        SampleRate => 1,    # min: 8000, max: 192000; OPTIONAL
                      },    # OPTIONAL
                      Codec => 'AAC'
                      , # values: AAC, MP2, MP3, WAV, AIFF, AC3, EAC3, EAC3_ATMOS, VORBIS, OPUS, PASSTHROUGH, FLAC; OPTIONAL
                      Eac3AtmosSettings => {
                        Bitrate => 1,    # min: 384000, max: 1024000; OPTIONAL
                        BitstreamMode =>
                          'COMPLETE_MAIN',    # values: COMPLETE_MAIN; OPTIONAL
                        CodingMode => 'CODING_MODE_AUTO'
                        , # values: CODING_MODE_AUTO, CODING_MODE_5_1_4, CODING_MODE_7_1_4, CODING_MODE_9_1_6; OPTIONAL
                        DialogueIntelligence =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        DownmixControl => 'SPECIFIED'
                        ,  # values: SPECIFIED, INITIALIZE_FROM_SOURCE; OPTIONAL
                        DynamicRangeCompressionLine => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        DynamicRangeCompressionRf => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        DynamicRangeControl => 'SPECIFIED'
                        ,  # values: SPECIFIED, INITIALIZE_FROM_SOURCE; OPTIONAL
                        LoRoCenterMixLevel   => 1,        # OPTIONAL
                        LoRoSurroundMixLevel => 1,        # OPTIONAL
                        LtRtCenterMixLevel   => 1,        # OPTIONAL
                        LtRtSurroundMixLevel => 1,        # OPTIONAL
                        MeteringMode         => 'LEQ_A'
                        , # values: LEQ_A, ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4; OPTIONAL
                        SampleRate      => 1, # min: 48000, max: 48000; OPTIONAL
                        SpeechThreshold => 1, # max: 100; OPTIONAL
                        StereoDownmix   => 'NOT_INDICATED'
                        , # values: NOT_INDICATED, STEREO, SURROUND, DPL2; OPTIONAL
                        SurroundExMode => 'NOT_INDICATED'
                        ,   # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      Eac3Settings => {
                        AttenuationControl => 'ATTENUATE_3_DB'
                        ,    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                        Bitrate       => 1, # min: 32000, max: 3024000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                        DcFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        Dialnorm => 1,          # min: 1, max: 31; OPTIONAL
                        DynamicRangeCompressionLine => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        DynamicRangeCompressionRf => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        LfeControl => 'LFE',    # values: LFE, NO_LFE; OPTIONAL
                        LfeFilter  =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        LoRoCenterMixLevel   => 1,               # OPTIONAL
                        LoRoSurroundMixLevel => 1,               # OPTIONAL
                        LtRtCenterMixLevel   => 1,               # OPTIONAL
                        LtRtSurroundMixLevel => 1,               # OPTIONAL
                        MetadataControl      => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        PassthroughControl => 'WHEN_POSSIBLE'
                        ,    # values: WHEN_POSSIBLE, NO_PASSTHROUGH; OPTIONAL
                        PhaseControl => 'SHIFT_90_DEGREES'
                        ,    # values: SHIFT_90_DEGREES, NO_SHIFT; OPTIONAL
                        SampleRate    => 1,   # min: 48000, max: 48000; OPTIONAL
                        StereoDownmix => 'NOT_INDICATED'
                        ,  # values: NOT_INDICATED, LO_RO, LT_RT, DPL2; OPTIONAL
                        SurroundExMode => 'NOT_INDICATED'
                        ,  # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                        SurroundMode => 'NOT_INDICATED'
                        ,  # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      FlacSettings => {
                        BitDepth   => 1,    # min: 16, max: 24; OPTIONAL
                        Channels   => 1,    # min: 1, max: 8; OPTIONAL
                        SampleRate => 1,    # min: 22050, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      Mp2Settings => {
                        Bitrate    => 1,    # min: 32000, max: 384000; OPTIONAL
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        SampleRate => 1,    # min: 32000, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      Mp3Settings => {
                        Bitrate  => 1,    # min: 16000, max: 320000; OPTIONAL
                        Channels => 1,    # min: 1, max: 2; OPTIONAL
                        RateControlMode => 'CBR',   # values: CBR, VBR; OPTIONAL
                        SampleRate      => 1, # min: 22050, max: 48000; OPTIONAL
                        VbrQuality      => 1, # max: 9; OPTIONAL
                      },    # OPTIONAL
                      OpusSettings => {
                        Bitrate    => 1,    # min: 32000, max: 192000; OPTIONAL
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        SampleRate => 1,    # min: 16000, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      VorbisSettings => {
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        SampleRate => 1,    # min: 22050, max: 48000; OPTIONAL
                        VbrQuality => 1,    # min: -1, max: 10; OPTIONAL
                      },    # OPTIONAL
                      WavSettings => {
                        BitDepth => 1,    # min: 16, max: 24; OPTIONAL
                        Channels => 1,    # min: 1, max: 64; OPTIONAL
                        Format   =>
                          'RIFF',    # values: RIFF, RF64, EXTENSIBLE; OPTIONAL
                        SampleRate => 1,    # min: 8000, max: 192000; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    CustomLanguageCode =>
                      'My__stringPatternAZaZ23AZaZ09',    # OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                    LanguageCodeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    RemixSettings => {
                      AudioDescriptionAudioChannel =>
                        1,    # min: 1, max: 64; OPTIONAL
                      AudioDescriptionDataChannel =>
                        1,    # min: 1, max: 64; OPTIONAL
                      ChannelMapping => {
                        OutputChannels => [
                          {
                            InputChannels => [
                              1, ...    # min: -60, max: 6
                            ],    # OPTIONAL
                            InputChannelsFineTune => [ 1, ... ],    # OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                      },    # OPTIONAL
                      ChannelsIn  => 1,    # min: 1, max: 64; OPTIONAL
                      ChannelsOut => 1,    # min: 1, max: 64; OPTIONAL
                    },    # OPTIONAL
                    StreamName => 'My__stringPatternWS',    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                CaptionDescriptions => [
                  {
                    CaptionSelectorName => 'My__stringMin1',    # min: 1
                    CustomLanguageCode  =>
                      'My__stringPatternAZaZ23AZaZ',            # OPTIONAL
                    DestinationSettings => {
                      BurninDestinationSettings => {
                        Alignment =>
                          'CENTERED',   # values: CENTERED, LEFT, AUTO; OPTIONAL
                        ApplyFontColor => 'WHITE_TEXT_ONLY'
                        ,    # values: WHITE_TEXT_ONLY, ALL_TEXT; OPTIONAL
                        BackgroundColor =>
                          'NONE',   # values: NONE, BLACK, WHITE, AUTO; OPTIONAL
                        BackgroundOpacity => 1,             # max: 255; OPTIONAL
                        FallbackFont      => 'BEST_MATCH'
                        , # values: BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF; OPTIONAL
                        FontColor => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO; OPTIONAL
                        FontFileBold =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontFileBoldItalic => 'My__string',
                        FontFileItalic     =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontFileRegular =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontOpacity    => 1,    # max: 255; OPTIONAL
                        FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                        FontScript     =>
                          'AUTOMATIC', # values: AUTOMATIC, HANS, HANT; OPTIONAL
                        FontSize     => 1,    # max: 96; OPTIONAL
                        HexFontColor =>
                          'My__stringMin6Max8Pattern09aFAF609aFAF2'
                        ,                     # min: 6, max: 8; OPTIONAL
                        OutlineColor => 'BLACK'
                        , # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO; OPTIONAL
                        OutlineSize                 => 1,    # max: 10; OPTIONAL
                        RemoveRubyReserveAttributes =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        ShadowColor =>
                          'NONE',   # values: NONE, BLACK, WHITE, AUTO; OPTIONAL
                        ShadowOpacity => 1,    # max: 255; OPTIONAL
                        ShadowXOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        ShadowYOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,    # values: FIXED_GRID, PROPORTIONAL, AUTO; OPTIONAL
                        XPosition => 1,    # max: 2147483647; OPTIONAL
                        YPosition => 1,    # max: 2147483647; OPTIONAL
                      },    # OPTIONAL
                      DestinationType => 'BURN_IN'
                      , # values: BURN_IN, DVB_SUB, EMBEDDED, EMBEDDED_PLUS_SCTE20, IMSC, SCTE20_PLUS_EMBEDDED, SCC, SRT, SMI, TELETEXT, TTML, WEBVTT; OPTIONAL
                      DvbSubDestinationSettings => {
                        Alignment =>
                          'CENTERED',   # values: CENTERED, LEFT, AUTO; OPTIONAL
                        ApplyFontColor => 'WHITE_TEXT_ONLY'
                        ,    # values: WHITE_TEXT_ONLY, ALL_TEXT; OPTIONAL
                        BackgroundColor =>
                          'NONE',   # values: NONE, BLACK, WHITE, AUTO; OPTIONAL
                        BackgroundOpacity => 1,       # max: 255; OPTIONAL
                        DdsHandling       => 'NONE'
                        , # values: NONE, SPECIFIED, NO_DISPLAY_WINDOW; OPTIONAL
                        DdsXCoordinate => 1,    # max: 2147483647; OPTIONAL
                        DdsYCoordinate => 1,    # max: 2147483647; OPTIONAL
                        FallbackFont   => 'BEST_MATCH'
                        , # values: BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF; OPTIONAL
                        FontColor => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO; OPTIONAL
                        FontFileBold =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontFileBoldItalic =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontFileItalic =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontFileRegular =>
                          'My__stringPatternS3TtfHttpsTtf',    # OPTIONAL
                        FontOpacity    => 1,    # max: 255; OPTIONAL
                        FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                        FontScript     =>
                          'AUTOMATIC', # values: AUTOMATIC, HANS, HANT; OPTIONAL
                        FontSize     => 1,    # max: 96; OPTIONAL
                        Height       => 1,    # min: 1, max: 2147483647
                        HexFontColor =>
                          'My__stringMin6Max8Pattern09aFAF609aFAF2'
                        ,                     # min: 6, max: 8; OPTIONAL
                        OutlineColor => 'BLACK'
                        , # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO; OPTIONAL
                        OutlineSize => 1,    # max: 10; OPTIONAL
                        ShadowColor =>
                          'NONE',   # values: NONE, BLACK, WHITE, AUTO; OPTIONAL
                        ShadowOpacity => 1,    # max: 255; OPTIONAL
                        ShadowXOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        ShadowYOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        SubtitlingType => 'HEARING_IMPAIRED'
                        ,    # values: HEARING_IMPAIRED, STANDARD; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,    # values: FIXED_GRID, PROPORTIONAL, AUTO; OPTIONAL
                        Width     => 1,    # min: 1, max: 2147483647
                        XPosition => 1,    # max: 2147483647; OPTIONAL
                        YPosition => 1,    # max: 2147483647; OPTIONAL
                      },    # OPTIONAL
                      EmbeddedDestinationSettings => {
                        Destination608ChannelNumber =>
                          1,    # min: 1, max: 4; OPTIONAL
                        Destination708ServiceNumber =>
                          1,    # min: 1, max: 6; OPTIONAL
                      },    # OPTIONAL
                      ImscDestinationSettings => {
                        Accessibility =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        StylePassthrough =>
                          'ENABLED',     # values: ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      SccDestinationSettings => {
                        Framerate => 'FRAMERATE_23_97'
                        , # values: FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_25, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME; OPTIONAL
                      },    # OPTIONAL
                      SrtDestinationSettings => {
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      TeletextDestinationSettings => {
                        PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                        ,    # min: 3, max: 3; OPTIONAL
                        PageTypes => [
                          'PAGE_TYPE_INITIAL',
                          ... # values: PAGE_TYPE_INITIAL, PAGE_TYPE_SUBTITLE, PAGE_TYPE_ADDL_INFO, PAGE_TYPE_PROGRAM_SCHEDULE, PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE
                        ],    # OPTIONAL
                      },    # OPTIONAL
                      TtmlDestinationSettings => {
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      WebvttDestinationSettings => {
                        Accessibility =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        StylePassthrough => 'ENABLED'
                        ,   # values: ENABLED, DISABLED, STRICT, MERGE; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP; OPTIONAL
                    LanguageDescription => 'My__string',
                  },
                  ...
                ],    # OPTIONAL
                ContainerSettings => {
                  CmfcSettings => {
                    AudioDuration => 'DEFAULT_CODEC_DURATION'
                    , # values: DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION; OPTIONAL
                    AudioGroupId       => 'My__string',
                    AudioRenditionSets => 'My__string',
                    AudioTrackType     => 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
                    , # values: ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                    DescriptiveVideoServiceFlag =>
                      'DONT_FLAG',    # values: DONT_FLAG, FLAG; OPTIONAL
                    IFrameOnlyManifest =>
                      'INCLUDE',      # values: INCLUDE, EXCLUDE; OPTIONAL
                    KlvMetadata =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    ManifestMetadataSignaling =>
                      'ENABLED',        # values: ENABLED, DISABLED; OPTIONAL
                    Scte35Esam   => 'INSERT',   # values: INSERT, NONE; OPTIONAL
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadata =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadataBoxVersion =>
                      'VERSION_0',      # values: VERSION_0, VERSION_1; OPTIONAL
                    TimedMetadataSchemeIdUri =>
                      'My__stringMax1000',    # max: 1000; OPTIONAL
                    TimedMetadataValue =>
                      'My__stringMax1000',    # max: 1000; OPTIONAL
                  },    # OPTIONAL
                  Container => 'F4V'
                  , # values: F4V, GIF, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, OGG, WEBM, RAW, Y4M; OPTIONAL
                  F4vSettings => {
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                  },    # OPTIONAL
                  M2tsSettings => {
                    AudioBufferModel => 'DVB',    # values: DVB, ATSC; OPTIONAL
                    AudioDuration    => 'DEFAULT_CODEC_DURATION'
                    , # values: DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION; OPTIONAL
                    AudioFramesPerPes => 1,    # max: 2147483647; OPTIONAL
                    AudioPids         => [
                      1, ...                   # min: 32, max: 8182
                    ],    # OPTIONAL
                    AudioPtsOffsetDelta =>
                      1,    # min: -10000, max: 10000; OPTIONAL
                    Bitrate     => 1,    # max: 2147483647; OPTIONAL
                    BufferModel =>
                      'MULTIPLEX',       # values: MULTIPLEX, NONE; OPTIONAL
                    DataPTSControl =>
                      'AUTO',    # values: AUTO, ALIGN_TO_VIDEO; OPTIONAL
                    DvbNitSettings => {
                      NetworkId   => 1,            # max: 65535; OPTIONAL
                      NetworkName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      NitInterval => 1,    # min: 25, max: 10000; OPTIONAL
                    },    # OPTIONAL
                    DvbSdtSettings => {
                      OutputSdt => 'SDT_FOLLOW'
                      , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                      SdtInterval => 1,    # min: 25, max: 2000; OPTIONAL
                      ServiceName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      ServiceProviderName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                    },    # OPTIONAL
                    DvbSubPids => [
                      1, ...    # min: 32, max: 8182
                    ],    # OPTIONAL
                    DvbTdtSettings => {
                      TdtInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                    },    # OPTIONAL
                    DvbTeletextPid   => 1,    # min: 32, max: 8182
                    EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                    , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                    EbpPlacement => 'VIDEO_AND_AUDIO_PIDS'
                    , # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                    EsRateInPes =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    ForceTsVideoEbpOrder =>
                      'FORCE',      # values: FORCE, DEFAULT; OPTIONAL
                    FragmentTime => 1,    # OPTIONAL
                    KlvMetadata  =>
                      'PASSTHROUGH',      # values: PASSTHROUGH, NONE; OPTIONAL
                    MaxPcrInterval => 1,        # max: 500; OPTIONAL
                    MinEbpInterval => 1,        # max: 10000; OPTIONAL
                    NielsenId3     => 'INSERT', # values: INSERT, NONE; OPTIONAL
                    NullPacketBitrate => 1,     # OPTIONAL
                    PatInterval       => 1,     # max: 1000; OPTIONAL
                    PcrControl        => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    PcrPid                 => 1,    # min: 32, max: 8182
                    PmtInterval            => 1,    # max: 1000; OPTIONAL
                    PmtPid                 => 1,    # min: 32, max: 8182
                    PreventBufferUnderflow =>
                      'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                    PrivateMetadataPid => 1,    # min: 32, max: 8182
                    ProgramNumber      => 1,    # max: 65535; OPTIONAL
                    PtsOffset          => 1,    # max: 3600; OPTIONAL
                    PtsOffsetMode      =>
                      'AUTO',    # values: AUTO, SECONDS, MILLISECONDS; OPTIONAL
                    RateMode   => 'VBR',    # values: VBR, CBR; OPTIONAL
                    Scte35Esam => {
                      Scte35EsamPid => 1,    # min: 32, max: 8182
                    },    # OPTIONAL
                    Scte35Pid    => 1,    # min: 32, max: 8182
                    Scte35Source =>
                      'PASSTHROUGH',      # values: PASSTHROUGH, NONE; OPTIONAL
                    SegmentationMarkers => 'NONE'
                    , # values: NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY; OPTIONAL
                    SegmentationStyle => 'MAINTAIN_CADENCE'
                    ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                    SegmentationTime  => 1,    # OPTIONAL
                    TimedMetadataPid  => 1,    # min: 32, max: 8182
                    TransportStreamId => 1,    # max: 65535; OPTIONAL
                    VideoPid          => 1,    # min: 32, max: 8182
                  },    # OPTIONAL
                  M3u8Settings => {
                    AudioDuration => 'DEFAULT_CODEC_DURATION'
                    , # values: DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION; OPTIONAL
                    AudioFramesPerPes => 1,    # max: 2147483647; OPTIONAL
                    AudioPids         => [
                      1, ...                   # min: 32, max: 8182
                    ],    # OPTIONAL
                    AudioPtsOffsetDelta =>
                      1,    # min: -10000, max: 10000; OPTIONAL
                    DataPTSControl =>
                      'AUTO',    # values: AUTO, ALIGN_TO_VIDEO; OPTIONAL
                    MaxPcrInterval => 1,        # max: 500; OPTIONAL
                    NielsenId3     => 'INSERT', # values: INSERT, NONE; OPTIONAL
                    PatInterval    => 1,        # max: 1000; OPTIONAL
                    PcrControl     => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    PcrPid             => 1,    # min: 32, max: 8182
                    PmtInterval        => 1,    # max: 1000; OPTIONAL
                    PmtPid             => 1,    # min: 32, max: 8182
                    PrivateMetadataPid => 1,    # min: 32, max: 8182
                    ProgramNumber      => 1,    # max: 65535; OPTIONAL
                    PtsOffset          => 1,    # max: 3600; OPTIONAL
                    PtsOffsetMode      =>
                      'AUTO',    # values: AUTO, SECONDS, MILLISECONDS; OPTIONAL
                    Scte35Pid    => 1,    # min: 32, max: 8182
                    Scte35Source =>
                      'PASSTHROUGH',      # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadata =>
                      'PASSTHROUGH',      # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadataPid  => 1,    # min: 32, max: 8182
                    TransportStreamId => 1,    # max: 65535; OPTIONAL
                    VideoPid          => 1,    # min: 32, max: 8182
                  },    # OPTIONAL
                  MovSettings => {
                    ClapAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    Mpeg2FourCCControl =>
                      'XDCAM',              # values: XDCAM, MPEG; OPTIONAL
                    PaddingControl => 'OMNEON', # values: OMNEON, NONE; OPTIONAL
                    Reference      => 'SELF_CONTAINED'
                    ,    # values: SELF_CONTAINED, EXTERNAL; OPTIONAL
                  },    # OPTIONAL
                  Mp4Settings => {
                    AudioDuration => 'DEFAULT_CODEC_DURATION'
                    , # values: DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION; OPTIONAL
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    CttsVersion  => 1,      # max: 1; OPTIONAL
                    FreeSpaceBox =>
                      'INCLUDE',            # values: INCLUDE, EXCLUDE; OPTIONAL
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                    Mp4MajorBrand => 'My__string',
                  },    # OPTIONAL
                  MpdSettings => {
                    AccessibilityCaptionHints =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    AudioDuration => 'DEFAULT_CODEC_DURATION'
                    , # values: DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION; OPTIONAL
                    CaptionContainerType =>
                      'RAW',    # values: RAW, FRAGMENTED_MP4; OPTIONAL
                    KlvMetadata => 'NONE', # values: NONE, PASSTHROUGH; OPTIONAL
                    ManifestMetadataSignaling =>
                      'ENABLED',           # values: ENABLED, DISABLED; OPTIONAL
                    Scte35Esam   => 'INSERT',   # values: INSERT, NONE; OPTIONAL
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadata =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadataBoxVersion =>
                      'VERSION_0',      # values: VERSION_0, VERSION_1; OPTIONAL
                    TimedMetadataSchemeIdUri =>
                      'My__stringMax1000',    # max: 1000; OPTIONAL
                    TimedMetadataValue =>
                      'My__stringMax1000',    # max: 1000; OPTIONAL
                  },    # OPTIONAL
                  MxfSettings => {
                    AfdSignaling =>
                      'NO_COPY',    # values: NO_COPY, COPY_FROM_VIDEO; OPTIONAL
                    Profile => 'D_10'
                    ,    # values: D_10, XDCAM, OP1A, XAVC, XDCAM_RDD9; OPTIONAL
                    XavcProfileSettings => {
                      DurationMode => 'ALLOW_ANY_DURATION'
                      , # values: ALLOW_ANY_DURATION, DROP_FRAMES_FOR_COMPLIANCE; OPTIONAL
                      MaxAncDataSize => 1,    # max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Extension    => 'My__stringMax256',    # max: 256; OPTIONAL
                NameModifier =>
                  'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                OutputSettings => {
                  HlsSettings => {
                    AudioGroupId       => 'My__string',
                    AudioOnlyContainer =>
                      'AUTOMATIC',    # values: AUTOMATIC, M2TS; OPTIONAL
                    AudioRenditionSets => 'My__string',
                    AudioTrackType     => 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
                    , # values: ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                    DescriptiveVideoServiceFlag =>
                      'DONT_FLAG',    # values: DONT_FLAG, FLAG; OPTIONAL
                    IFrameOnlyManifest =>
                      'INCLUDE',      # values: INCLUDE, EXCLUDE; OPTIONAL
                    SegmentModifier => 'My__string',
                  },    # OPTIONAL
                },    # OPTIONAL
                Preset           => 'My__stringMin0',    # OPTIONAL
                VideoDescription => {
                  AfdSignaling => 'NONE',  # values: NONE, AUTO, FIXED; OPTIONAL
                  AntiAlias => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                  ChromaPositionMode => 'AUTO'
                  ,    # values: AUTO, FORCE_CENTER, FORCE_TOP_LEFT; OPTIONAL
                  CodecSettings => {
                    Av1Settings => {
                      AdaptiveQuantization => 'OFF'
                      ,  # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      BitDepth => 'BIT_8',    # values: BIT_8, BIT_10; OPTIONAL
                      FilmGrainSynthesis =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      GopSize              => 1,    # OPTIONAL
                      MaxBitrate => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 15; OPTIONAL
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      QvbrSettings => {
                        QvbrQualityLevel => 1,    # min: 1, max: 10; OPTIONAL
                        QvbrQualityLevelFineTune => 1,    # OPTIONAL
                      },    # OPTIONAL
                      RateControlMode => 'QVBR',    # values: QVBR; OPTIONAL
                      Slices          => 1,         # min: 1, max: 32; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                    },    # OPTIONAL
                    AvcIntraSettings => {
                      AvcIntraClass => 'CLASS_50'
                      , # values: CLASS_50, CLASS_100, CLASS_200, CLASS_4K_2K; OPTIONAL
                      AvcIntraUhdSettings => {
                        QualityTuningLevel => 'SINGLE_PASS'
                        ,    # values: SINGLE_PASS, MULTI_PASS; OPTIONAL
                      },    # OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1, # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1, # min: 24, max: 60000; OPTIONAL
                      InterlaceMode        => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,     # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                    },    # OPTIONAL
                    Codec => 'AV1'
                    , # values: AV1, AVC_INTRA, FRAME_CAPTURE, GIF, H_264, H_265, MPEG2, PASSTHROUGH, PRORES, UNCOMPRESSED, VC3, VP8, VP9, XAVC; OPTIONAL
                    FrameCaptureSettings => {
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      MaxCaptures => 1,    # min: 1, max: 10000000; OPTIONAL
                      Quality     => 1,    # min: 1, max: 100; OPTIONAL
                    },    # OPTIONAL
                    GifSettings => {
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                    },    # OPTIONAL
                    H264Settings => {
                      AdaptiveQuantization => 'OFF'
                      , # values: OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      BandwidthReductionFilter => {
                        Sharpening =>
                          'LOW',    # values: LOW, MEDIUM, HIGH, OFF; OPTIONAL
                        Strength => 'LOW'
                        ,    # values: LOW, MEDIUM, HIGH, AUTO, OFF; OPTIONAL
                      },    # OPTIONAL
                      Bitrate    => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2; OPTIONAL
                      CodecProfile => 'BASELINE'
                      , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      EndOfStreamMarkers =>
                        'INCLUDE',     # values: INCLUDE, SUPPRESS; OPTIONAL
                      EntropyEncoding =>
                        'CABAC',       # values: CABAC, CAVLC; OPTIONAL
                      FieldEncoding =>
                        'PAFF',    # values: PAFF, FORCE_FIELD, MBAFF; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      GopBReference        =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      GopSize          => 1,    # OPTIONAL
                      GopSizeUnits     =>
                        'FRAMES',    # values: FRAMES, SECONDS, AUTO; OPTIONAL
                      HrdBufferFinalFillPercentage   => 1,  # max: 100; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,            # max: 1152000000; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      MaxBitrate   => 1,  # min: 1000, max: 1152000000; OPTIONAL
                      MinIInterval => 1,  # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 7; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      ParControl            => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator  => 1,    # min: 1, max: 2147483647
                      ParNumerator    => 1,    # min: 1, max: 2147483647
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                      QvbrSettings => {
                        MaxAverageBitrate =>
                          1,    # min: 1000, max: 1152000000; OPTIONAL
                        QvbrQualityLevel => 1,    # min: 1, max: 10; OPTIONAL
                        QvbrQualityLevelFineTune => 1,    # OPTIONAL
                      },    # OPTIONAL
                      RateControlMode =>
                        'VBR',    # values: VBR, CBR, QVBR; OPTIONAL
                      RepeatPps =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SaliencyAwareEncoding =>
                        'DISABLED',    # values: DISABLED, PREFERRED; OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,    # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SceneChangeDetect => 'DISABLED'
                      , # values: DISABLED, ENABLED, TRANSITION_DETECTION; OPTIONAL
                      Slices  => 1,    # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Softness                    => 1,    # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Syntax   => 'DEFAULT', # values: DEFAULT, RP2027; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      WriteMp4PackagingType =>
                        'AVC1',        # values: AVC1, AVC3; OPTIONAL
                    },    # OPTIONAL
                    H265Settings => {
                      AdaptiveQuantization => 'OFF'
                      , # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX, AUTO; OPTIONAL
                      AlternateTransferFunctionSei =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      BandwidthReductionFilter => {
                        Sharpening =>
                          'LOW',    # values: LOW, MEDIUM, HIGH, OFF; OPTIONAL
                        Strength => 'LOW'
                        ,    # values: LOW, MEDIUM, HIGH, AUTO, OFF; OPTIONAL
                      },    # OPTIONAL
                      Bitrate    => 1,    # min: 1000, max: 1466400000; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2; OPTIONAL
                      CodecProfile => 'MAIN_MAIN'
                      , # values: MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH; OPTIONAL
                      Deblocking =>
                        'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      EndOfStreamMarkers =>
                        'INCLUDE',     # values: INCLUDE, SUPPRESS; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      GopBReference        =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      GopSize          => 1,    # OPTIONAL
                      GopSizeUnits     =>
                        'FRAMES',    # values: FRAMES, SECONDS, AUTO; OPTIONAL
                      HrdBufferFinalFillPercentage   => 1,  # max: 100; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,            # max: 1466400000; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      MaxBitrate   => 1,  # min: 1000, max: 1466400000; OPTIONAL
                      MinIInterval => 1,  # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 7; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      ParControl            => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator  => 1,    # min: 1, max: 2147483647
                      ParNumerator    => 1,    # min: 1, max: 2147483647
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                      QvbrSettings => {
                        MaxAverageBitrate =>
                          1,    # min: 1000, max: 1466400000; OPTIONAL
                        QvbrQualityLevel => 1,    # min: 1, max: 10; OPTIONAL
                        QvbrQualityLevelFineTune => 1,    # OPTIONAL
                      },    # OPTIONAL
                      RateControlMode =>
                        'VBR',    # values: VBR, CBR, QVBR; OPTIONAL
                      SampleAdaptiveOffsetFilterMode =>
                        'DEFAULT',    # values: DEFAULT, ADAPTIVE, OFF; OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,    # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SceneChangeDetect => 'DISABLED'
                      , # values: DISABLED, ENABLED, TRANSITION_DETECTION; OPTIONAL
                      Slices  => 1,    # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      TemporalIds =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Tiles => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',        # values: DISABLED, ENABLED; OPTIONAL
                      WriteMp4PackagingType =>
                        'HVC1',            # values: HVC1, HEV1; OPTIONAL
                    },    # OPTIONAL
                    Mpeg2Settings => {
                      AdaptiveQuantization =>
                        'OFF',    # values: OFF, LOW, MEDIUM, HIGH; OPTIONAL
                      Bitrate    => 1,     # min: 1000, max: 288000000; OPTIONAL
                      CodecLevel => 'AUTO'
                      ,    # values: AUTO, LOW, MAIN, HIGH1440, HIGH; OPTIONAL
                      CodecProfile =>
                        'MAIN',    # values: MAIN, PROFILE_422; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1, # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1, # min: 24, max: 60000; OPTIONAL
                      GopClosedCadence     => 1, # max: 2147483647; OPTIONAL
                      GopSize              => 1, # OPTIONAL
                      GopSizeUnits         =>
                        'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                      HrdBufferFinalFillPercentage   => 1,  # max: 100; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,              # max: 47185920; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      IntraDcPrecision => 'AUTO'
                      , # values: AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11; OPTIONAL
                      MaxBitrate   => 1,   # min: 1000, max: 300000000; OPTIONAL
                      MinIInterval => 1,   # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                 # max: 7; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator  => 1,    # min: 1, max: 2147483647
                      ParNumerator    => 1,    # min: 1, max: 2147483647
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      ,     # values: SINGLE_PASS, MULTI_PASS; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR, CBR; OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,    # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Softness                    => 1,    # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Syntax   => 'DEFAULT',   # values: DEFAULT, D_10; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                    },    # OPTIONAL
                    ProresSettings => {
                      ChromaSampling => 'PRESERVE_444_SAMPLING'
                      , # values: PRESERVE_444_SAMPLING, SUBSAMPLE_TO_422; OPTIONAL
                      CodecProfile => 'APPLE_PRORES_422'
                      , # values: APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY, APPLE_PRORES_4444, APPLE_PRORES_4444_XQ; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      InterlaceMode        => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator  => 1,    # min: 1, max: 2147483647
                      ParNumerator    => 1,    # min: 1, max: 2147483647
                      PerFrameMetrics => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,     # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                    },    # OPTIONAL
                    UncompressedSettings => {
                      Fourcc => 'I420',    # values: I420, I422, I444; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      InterlaceMode        => 'INTERLACED'
                      ,    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,    # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                    },    # OPTIONAL
                    Vc3Settings => {
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1, # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1, # min: 24, max: 60000; OPTIONAL
                      InterlaceMode        => 'INTERLACED'
                      ,    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                      ScanTypeConversionMode => 'INTERLACED'
                      ,    # values: INTERLACED, INTERLACED_OPTIMIZE; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',         # values: NONE, HARD; OPTIONAL
                      Vc3Class => 'CLASS_145_8BIT'
                      , # values: CLASS_145_8BIT, CLASS_220_8BIT, CLASS_220_10BIT; OPTIONAL
                    },    # OPTIONAL
                    Vp8Settings => {
                      Bitrate => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      GopSize              => 1,    # OPTIONAL
                      HrdBufferSize        => 1,    # max: 47185920; OPTIONAL
                      MaxBitrate => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator     => 1,    # min: 1, max: 2147483647
                      ParNumerator       => 1,    # min: 1, max: 2147483647
                      QualityTuningLevel => 'MULTI_PASS'
                      ,    # values: MULTI_PASS, MULTI_PASS_HQ; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR; OPTIONAL
                    },    # OPTIONAL
                    Vp9Settings => {
                      Bitrate => 1,       # min: 1000, max: 480000000; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1,    # min: 1, max: 2147483647
                      FramerateNumerator   => 1,    # min: 1, max: 2147483647
                      GopSize              => 1,    # OPTIONAL
                      HrdBufferSize        => 1,    # max: 47185920; OPTIONAL
                      MaxBitrate => 1,    # min: 1000, max: 480000000; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator     => 1,    # min: 1, max: 2147483647
                      ParNumerator       => 1,    # min: 1, max: 2147483647
                      QualityTuningLevel => 'MULTI_PASS'
                      ,    # values: MULTI_PASS, MULTI_PASS_HQ; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR; OPTIONAL
                    },    # OPTIONAL
                    XavcSettings => {
                      AdaptiveQuantization => 'OFF'
                      , # values: OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      EntropyEncoding =>
                        'AUTO',    # values: AUTO, CABAC, CAVLC; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      , # values: DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT; OPTIONAL
                      FramerateDenominator => 1, # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1, # min: 24, max: 60000; OPTIONAL
                      PerFrameMetrics      => [
                        'PSNR',
                        ...  # values: PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
                      ],    # OPTIONAL
                      Profile => 'XAVC_HD_INTRA_CBG'
                      , # values: XAVC_HD_INTRA_CBG, XAVC_4K_INTRA_CBG, XAVC_4K_INTRA_VBR, XAVC_HD, XAVC_4K; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Softness                    => 1,    # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Xavc4kIntraCbgProfileSettings => {
                        XavcClass => 'CLASS_100'
                        ,    # values: CLASS_100, CLASS_300, CLASS_480; OPTIONAL
                      },    # OPTIONAL
                      Xavc4kIntraVbrProfileSettings => {
                        XavcClass => 'CLASS_100'
                        ,    # values: CLASS_100, CLASS_300, CLASS_480; OPTIONAL
                      },    # OPTIONAL
                      Xavc4kProfileSettings => {
                        BitrateClass => 'BITRATE_CLASS_100'
                        , # values: BITRATE_CLASS_100, BITRATE_CLASS_140, BITRATE_CLASS_200; OPTIONAL
                        CodecProfile =>
                          'HIGH',    # values: HIGH, HIGH_422; OPTIONAL
                        FlickerAdaptiveQuantization =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        GopBReference =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        GopClosedCadence   => 1,    # max: 2147483647; OPTIONAL
                        HrdBufferSize      => 1,    # max: 1152000000; OPTIONAL
                        QualityTuningLevel => 'SINGLE_PASS'
                        , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                        Slices => 1,    # min: 8, max: 12; OPTIONAL
                      },    # OPTIONAL
                      XavcHdIntraCbgProfileSettings => {
                        XavcClass => 'CLASS_50'
                        ,    # values: CLASS_50, CLASS_100, CLASS_200; OPTIONAL
                      },    # OPTIONAL
                      XavcHdProfileSettings => {
                        BitrateClass => 'BITRATE_CLASS_25'
                        , # values: BITRATE_CLASS_25, BITRATE_CLASS_35, BITRATE_CLASS_50; OPTIONAL
                        FlickerAdaptiveQuantization =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        GopBReference =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                        HrdBufferSize    => 1,    # max: 1152000000; OPTIONAL
                        InterlaceMode    => 'PROGRESSIVE'
                        , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                        QualityTuningLevel => 'SINGLE_PASS'
                        , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                        Slices   => 1,         # min: 4, max: 12; OPTIONAL
                        Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  ColorMetadata => 'IGNORE',  # values: IGNORE, INSERT; OPTIONAL
                  Crop          => {
                    Height => 1,    # min: 2, max: 2147483647; OPTIONAL
                    Width  => 1,    # min: 2, max: 2147483647; OPTIONAL
                    X      => 1,    # max: 2147483647; OPTIONAL
                    Y      => 1,    # max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  DropFrameTimecode =>
                    'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                  FixedAfd => 1,   # max: 15; OPTIONAL
                  Height   => 1,   # min: 32, max: 8192; OPTIONAL
                  Position => {
                    Height => 1,    # min: 2, max: 2147483647; OPTIONAL
                    Width  => 1,    # min: 2, max: 2147483647; OPTIONAL
                    X      => 1,    # max: 2147483647; OPTIONAL
                    Y      => 1,    # max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  RespondToAfd =>
                    'NONE',    # values: NONE, RESPOND, PASSTHROUGH; OPTIONAL
                  ScalingBehavior => 'DEFAULT'
                  , # values: DEFAULT, STRETCH_TO_OUTPUT, FIT, FIT_NO_UPSCALE, FILL; OPTIONAL
                  Sharpness         => 1,    # max: 100; OPTIONAL
                  TimecodeInsertion =>
                    'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                  TimecodeTrack =>
                    'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                  VideoPreprocessors => {
                    ColorCorrector => {
                      Brightness => 1,    # min: 1, max: 100; OPTIONAL
                      ClipLimits => {
                        MaximumRGBTolerance => 1,  # min: 90, max: 105; OPTIONAL
                        MaximumYUV => 1,    # min: 920, max: 1023; OPTIONAL
                        MinimumRGBTolerance => 1,   # min: -5, max: 10; OPTIONAL
                        MinimumYUV          => 1,   # max: 128; OPTIONAL
                      },    # OPTIONAL
                      ColorSpaceConversion => 'NONE'
                      , # values: NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020, FORCE_P3DCI, FORCE_P3D65_SDR, FORCE_P3D65_HDR; OPTIONAL
                      Contrast      => 1,    # min: 1, max: 100; OPTIONAL
                      Hdr10Metadata => {
                        BluePrimaryX              => 1,   # max: 50000; OPTIONAL
                        BluePrimaryY              => 1,   # max: 50000; OPTIONAL
                        GreenPrimaryX             => 1,   # max: 50000; OPTIONAL
                        GreenPrimaryY             => 1,   # max: 50000; OPTIONAL
                        MaxContentLightLevel      => 1,   # max: 65535; OPTIONAL
                        MaxFrameAverageLightLevel => 1,   # max: 65535; OPTIONAL
                        MaxLuminance => 1,    # max: 2147483647; OPTIONAL
                        MinLuminance => 1,    # max: 2147483647; OPTIONAL
                        RedPrimaryX  => 1,    # max: 50000; OPTIONAL
                        RedPrimaryY  => 1,    # max: 50000; OPTIONAL
                        WhitePointX  => 1,    # max: 50000; OPTIONAL
                        WhitePointY  => 1,    # max: 50000; OPTIONAL
                      },    # OPTIONAL
                      HdrToSdrToneMapper => 'PRESERVE_DETAILS'
                      ,       # values: PRESERVE_DETAILS, VIBRANT; OPTIONAL
                      Hue          => 1,    # min: -180, max: 180; OPTIONAL
                      MaxLuminance => 1,    # max: 2147483647; OPTIONAL
                      SampleRangeConversion => 'LIMITED_RANGE_SQUEEZE'
                      , # values: LIMITED_RANGE_SQUEEZE, NONE, LIMITED_RANGE_CLIP; OPTIONAL
                      Saturation             => 1,  # min: 1, max: 100; OPTIONAL
                      SdrReferenceWhiteLevel =>
                        1,    # min: 100, max: 1000; OPTIONAL
                    },    # OPTIONAL
                    Deinterlacer => {
                      Algorithm => 'INTERPOLATE'
                      , # values: INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER, LINEAR_INTERPOLATION; OPTIONAL
                      Control => 'FORCE_ALL_FRAMES'
                      ,    # values: FORCE_ALL_FRAMES, NORMAL; OPTIONAL
                      Mode => 'DEINTERLACE'
                      , # values: DEINTERLACE, INVERSE_TELECINE, ADAPTIVE; OPTIONAL
                    },    # OPTIONAL
                    DolbyVision => {
                      L6Metadata => {
                        MaxCll  => 1,    # max: 65535; OPTIONAL
                        MaxFall => 1,    # max: 65535; OPTIONAL
                      },    # OPTIONAL
                      L6Mode => 'PASSTHROUGH'
                      ,    # values: PASSTHROUGH, RECALCULATE, SPECIFY; OPTIONAL
                      Mapping => 'HDR10_NOMAP'
                      ,    # values: HDR10_NOMAP, HDR10_1000; OPTIONAL
                      Profile =>
                        'PROFILE_5',  # values: PROFILE_5, PROFILE_8_1; OPTIONAL
                    },    # OPTIONAL
                    Hdr10Plus => {
                      MasteringMonitorNits => 1,    # max: 4000; OPTIONAL
                      TargetMonitorNits    => 1,    # max: 4000; OPTIONAL
                    },    # OPTIONAL
                    ImageInserter => {
                      InsertableImages => [
                        {
                          Duration           => 1,   # max: 2147483647; OPTIONAL
                          FadeIn             => 1,   # max: 2147483647; OPTIONAL
                          FadeOut            => 1,   # max: 2147483647; OPTIONAL
                          Height             => 1,   # max: 2147483647; OPTIONAL
                          ImageInserterInput =>
'My__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA'
                          ,                          # min: 14; OPTIONAL
                          ImageX    => 1,            # max: 2147483647; OPTIONAL
                          ImageY    => 1,            # max: 2147483647; OPTIONAL
                          Layer     => 1,            # max: 99; OPTIONAL
                          Opacity   => 1,            # max: 100; OPTIONAL
                          StartTime =>
                            'My__stringPattern01D20305D205D',    # OPTIONAL
                          Width => 1,    # max: 2147483647; OPTIONAL
                        },
                        ...
                      ],    # OPTIONAL
                      SdrReferenceWhiteLevel =>
                        1,    # min: 100, max: 1000; OPTIONAL
                    },    # OPTIONAL
                    NoiseReducer => {
                      Filter => 'BILATERAL'
                      , # values: BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL, TEMPORAL; OPTIONAL
                      FilterSettings => {
                        Strength => 1,    # max: 3; OPTIONAL
                      },    # OPTIONAL
                      SpatialFilterSettings => {
                        PostFilterSharpenStrength => 1,    # max: 3; OPTIONAL
                        Speed    => 1,    # min: -2, max: 3; OPTIONAL
                        Strength => 1,    # max: 16; OPTIONAL
                      },    # OPTIONAL
                      TemporalFilterSettings => {
                        AggressiveMode         => 1,          # max: 4; OPTIONAL
                        PostTemporalSharpening => 'DISABLED'
                        ,    # values: DISABLED, ENABLED, AUTO; OPTIONAL
                        PostTemporalSharpeningStrength =>
                          'LOW',    # values: LOW, MEDIUM, HIGH; OPTIONAL
                        Speed    => 1,    # min: -1, max: 3; OPTIONAL
                        Strength => 1,    # max: 16; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    PartnerWatermarking => {
                      NexguardFileMarkerSettings => {
                        License => 'My__stringMin1Max100000'
                        ,                # min: 1, max: 100000; OPTIONAL
                        Payload => 1,    # max: 4194303; OPTIONAL
                        Preset  =>
                          'My__stringMin1Max256',   # min: 1, max: 256; OPTIONAL
                        Strength => 'LIGHTEST'
                        , # values: LIGHTEST, LIGHTER, DEFAULT, STRONGER, STRONGEST; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    TimecodeBurnin => {
                      FontSize => 1,             # min: 10, max: 48; OPTIONAL
                      Position => 'TOP_CENTER'
                      , # values: TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT; OPTIONAL
                      Prefix => 'My__stringPattern',    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Width => 1,    # min: 32, max: 8192; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        TimecodeConfig => {
          Anchor => 'My__stringPattern010920405090509092',    # OPTIONAL
          Source =>
            'EMBEDDED',  # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
          Start           => 'My__stringPattern010920405090509092',   # OPTIONAL
          TimestampOffset => 'My__stringPattern0940191020191209301',  # OPTIONAL
        },    # OPTIONAL
        TimedMetadataInsertion => {
          Id3Insertions => [
            {
              Id3      => 'My__stringPatternAZaZ0902',              # OPTIONAL
              Timecode => 'My__stringPattern010920405090509092',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },
      AccelerationSettings => {
        Mode => 'DISABLED',    # values: DISABLED, ENABLED, PREFERRED

      },    # OPTIONAL
      Category        => 'My__string',    # OPTIONAL
      Description     => 'My__string',    # OPTIONAL
      HopDestinations => [
        {
          Priority    => 1,              # min: -50, max: 50; OPTIONAL
          Queue       => 'My__string',
          WaitMinutes => 1,              # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Priority             => 1,                                    # OPTIONAL
      Queue                => 'My__string',                         # OPTIONAL
      StatusUpdateInterval => 'SECONDS_10',                         # OPTIONAL
      Tags                 => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $JobTemplate = $CreateJobTemplateResponse->JobTemplate;

    # Returns a L<Paws::MediaConvert::CreateJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/CreateJobTemplate>

=head1 ATTRIBUTES


=head2 AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>

Accelerated transcoding can significantly speed up jobs with long,
visually complex content. Outputs that use this feature incur pro-tier
pricing. For information about feature limitations, see the AWS
Elemental MediaConvert User Guide.



=head2 Category => Str

Optional. A category for the job template you are creating



=head2 Description => Str

Optional. A description of the job template you are creating.



=head2 HopDestinations => ArrayRef[L<Paws::MediaConvert::HopDestination>]

Optional. Use queue hopping to avoid overly long waits in the backlog
of the queue that you submit your job to. Specify an alternate queue
and the maximum time that your job will wait in the initial queue
before hopping. For more information about this feature, see the AWS
Elemental MediaConvert User Guide.



=head2 B<REQUIRED> Name => Str

The name of the job template you are creating.



=head2 Priority => Int

Specify the relative priority for this job. In any given queue, the
service begins processing the job with the highest value first. When
more than one job has the same priority, the service begins processing
the job that you submitted first. If you don't specify a priority, the
service uses the default value 0.



=head2 Queue => Str

Optional. The queue that jobs created from this template are assigned
to. If you don't specify this, jobs will go to the default queue.



=head2 B<REQUIRED> Settings => L<Paws::MediaConvert::JobTemplateSettings>

JobTemplateSettings contains all the transcode settings saved in the
template that will be applied to jobs created from it.



=head2 StatusUpdateInterval => Str

Specify how often MediaConvert sends STATUS_UPDATE events to Amazon
CloudWatch Events. Set the interval, in seconds, between status
updates. MediaConvert sends an update at this interval from the time
the service begins processing your job to the time it completes the
transcode or encounters an error.

Valid values are: C<"SECONDS_10">, C<"SECONDS_12">, C<"SECONDS_15">, C<"SECONDS_20">, C<"SECONDS_30">, C<"SECONDS_60">, C<"SECONDS_120">, C<"SECONDS_180">, C<"SECONDS_240">, C<"SECONDS_300">, C<"SECONDS_360">, C<"SECONDS_420">, C<"SECONDS_480">, C<"SECONDS_540">, C<"SECONDS_600">

=head2 Tags => L<Paws::MediaConvert::__mapOf__string>

The tags that you want to add to the resource. You can tag resources
with a key-value pair or with only a key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobTemplate in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

