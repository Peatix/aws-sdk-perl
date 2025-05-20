
package Paws::MediaTailor::CreateProgram;
  use Moose;
  has AdBreaks => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AdBreak]');
  has AudienceMedia => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AudienceMedia]');
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has LiveSourceName => (is => 'ro', isa => 'Str');
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProgramName', required => 1);
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::ScheduleConfiguration', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', required => 1);
  has VodSourceName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{ChannelName}/program/{ProgramName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateProgram - Arguments for method CreateProgram on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProgram on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProgram.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateProgramResponse = $api . mediatailor->CreateProgram(
      ChannelName           => 'My__string',
      ProgramName           => 'My__string',
      ScheduleConfiguration => {
        Transition => {
          RelativePosition =>
            'BEFORE_PROGRAM',    # values: BEFORE_PROGRAM, AFTER_PROGRAM
          Type                     => 'My__string',
          DurationMillis           => 1,              # OPTIONAL
          RelativeProgram          => 'My__string',
          ScheduledStartTimeMillis => 1,              # OPTIONAL
        },
        ClipRange => {
          EndOffsetMillis   => 1,                     # OPTIONAL
          StartOffsetMillis => 1,                     # OPTIONAL
        },    # OPTIONAL
      },
      SourceLocationName => 'My__string',
      AdBreaks           => [
        {
          OffsetMillis    => 1,    # OPTIONAL
          AdBreakMetadata => [
            {
              Key   => 'MyString',
              Value => 'MyString',

            },
            ...
          ],                       # OPTIONAL
          MessageType =>
            'SPLICE_INSERT',    # values: SPLICE_INSERT, TIME_SIGNAL; OPTIONAL
          Slate => {
            SourceLocationName => 'My__string',
            VodSourceName      => 'My__string',
          },                    # OPTIONAL
          SpliceInsertMessage => {
            AvailNum        => 1,    # OPTIONAL
            AvailsExpected  => 1,    # OPTIONAL
            SpliceEventId   => 1,    # OPTIONAL
            UniqueProgramId => 1,    # OPTIONAL
          },    # OPTIONAL
          TimeSignalMessage => {
            SegmentationDescriptors => [
              {
                SegmentNum           => 1,            # OPTIONAL
                SegmentationEventId  => 1,            # OPTIONAL
                SegmentationTypeId   => 1,            # OPTIONAL
                SegmentationUpid     => 'MyString',
                SegmentationUpidType => 1,            # OPTIONAL
                SegmentsExpected     => 1,            # OPTIONAL
                SubSegmentNum        => 1,            # OPTIONAL
                SubSegmentsExpected  => 1,            # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AudienceMedia => [
        {
          AlternateMedia => [
            {
              AdBreaks => [
                {
                  OffsetMillis    => 1,    # OPTIONAL
                  AdBreakMetadata => [
                    {
                      Key   => 'MyString',
                      Value => 'MyString',

                    },
                    ...
                  ],                       # OPTIONAL
                  MessageType => 'SPLICE_INSERT'
                  ,    # values: SPLICE_INSERT, TIME_SIGNAL; OPTIONAL
                  Slate => {
                    SourceLocationName => 'My__string',
                    VodSourceName      => 'My__string',
                  },    # OPTIONAL
                  SpliceInsertMessage => {
                    AvailNum        => 1,    # OPTIONAL
                    AvailsExpected  => 1,    # OPTIONAL
                    SpliceEventId   => 1,    # OPTIONAL
                    UniqueProgramId => 1,    # OPTIONAL
                  },    # OPTIONAL
                  TimeSignalMessage => {
                    SegmentationDescriptors => [
                      {
                        SegmentNum           => 1,            # OPTIONAL
                        SegmentationEventId  => 1,            # OPTIONAL
                        SegmentationTypeId   => 1,            # OPTIONAL
                        SegmentationUpid     => 'MyString',
                        SegmentationUpidType => 1,            # OPTIONAL
                        SegmentsExpected     => 1,            # OPTIONAL
                        SubSegmentNum        => 1,            # OPTIONAL
                        SubSegmentsExpected  => 1,            # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],
              ClipRange => {
                EndOffsetMillis   => 1,    # OPTIONAL
                StartOffsetMillis => 1,    # OPTIONAL
              },    # OPTIONAL
              DurationMillis           => 1,              # OPTIONAL
              LiveSourceName           => 'My__string',
              ScheduledStartTimeMillis => 1,              # OPTIONAL
              SourceLocationName       => 'My__string',
              VodSourceName            => 'My__string',
            },
            ...
          ],    # OPTIONAL
          Audience => 'My__string',
        },
        ...
      ],    # OPTIONAL
      LiveSourceName => 'My__string',    # OPTIONAL
      VodSourceName  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AdBreaks           = $CreateProgramResponse->AdBreaks;
    my $Arn                = $CreateProgramResponse->Arn;
    my $AudienceMedia      = $CreateProgramResponse->AudienceMedia;
    my $ChannelName        = $CreateProgramResponse->ChannelName;
    my $ClipRange          = $CreateProgramResponse->ClipRange;
    my $CreationTime       = $CreateProgramResponse->CreationTime;
    my $DurationMillis     = $CreateProgramResponse->DurationMillis;
    my $LiveSourceName     = $CreateProgramResponse->LiveSourceName;
    my $ProgramName        = $CreateProgramResponse->ProgramName;
    my $ScheduledStartTime = $CreateProgramResponse->ScheduledStartTime;
    my $SourceLocationName = $CreateProgramResponse->SourceLocationName;
    my $VodSourceName      = $CreateProgramResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::CreateProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateProgram>

=head1 ATTRIBUTES


=head2 AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]

The ad break configuration settings.



=head2 AudienceMedia => ArrayRef[L<Paws::MediaTailor::AudienceMedia>]

The list of AudienceMedia defined in program.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel for this Program.



=head2 LiveSourceName => Str

The name of the LiveSource for this Program.



=head2 B<REQUIRED> ProgramName => Str

The name of the Program.



=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::MediaTailor::ScheduleConfiguration>

The schedule configuration settings.



=head2 B<REQUIRED> SourceLocationName => Str

The name of the source location.



=head2 VodSourceName => Str

The name that's used to refer to a VOD source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProgram in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

