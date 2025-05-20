
package Paws::MediaTailor::UpdateProgram;
  use Moose;
  has AdBreaks => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AdBreak]');
  has AudienceMedia => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AudienceMedia]');
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProgramName', required => 1);
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::UpdateProgramScheduleConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{ChannelName}/program/{ProgramName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::UpdateProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateProgram - Arguments for method UpdateProgram on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProgram on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method UpdateProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProgram.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $UpdateProgramResponse = $api . mediatailor->UpdateProgram(
      ChannelName           => 'My__string',
      ProgramName           => 'My__string',
      ScheduleConfiguration => {
        ClipRange => {
          EndOffsetMillis   => 1,    # OPTIONAL
          StartOffsetMillis => 1,    # OPTIONAL
        },    # OPTIONAL
        Transition => {
          DurationMillis           => 1,    # OPTIONAL
          ScheduledStartTimeMillis => 1,    # OPTIONAL
        },    # OPTIONAL
      },
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
    );

    # Results:
    my $AdBreaks           = $UpdateProgramResponse->AdBreaks;
    my $Arn                = $UpdateProgramResponse->Arn;
    my $AudienceMedia      = $UpdateProgramResponse->AudienceMedia;
    my $ChannelName        = $UpdateProgramResponse->ChannelName;
    my $ClipRange          = $UpdateProgramResponse->ClipRange;
    my $CreationTime       = $UpdateProgramResponse->CreationTime;
    my $DurationMillis     = $UpdateProgramResponse->DurationMillis;
    my $LiveSourceName     = $UpdateProgramResponse->LiveSourceName;
    my $ProgramName        = $UpdateProgramResponse->ProgramName;
    my $ScheduledStartTime = $UpdateProgramResponse->ScheduledStartTime;
    my $SourceLocationName = $UpdateProgramResponse->SourceLocationName;
    my $VodSourceName      = $UpdateProgramResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::UpdateProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/UpdateProgram>

=head1 ATTRIBUTES


=head2 AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]

The ad break configuration settings.



=head2 AudienceMedia => ArrayRef[L<Paws::MediaTailor::AudienceMedia>]

The list of AudienceMedia defined in program.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel for this Program.



=head2 B<REQUIRED> ProgramName => Str

The name of the Program.



=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::MediaTailor::UpdateProgramScheduleConfiguration>

The schedule configuration settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProgram in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

