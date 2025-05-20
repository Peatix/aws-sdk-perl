
package Paws::MediaTailor::UpdateProgramResponse;
  use Moose;
  has AdBreaks => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AdBreak]');
  has Arn => (is => 'ro', isa => 'Str');
  has AudienceMedia => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AudienceMedia]');
  has ChannelName => (is => 'ro', isa => 'Str');
  has ClipRange => (is => 'ro', isa => 'Paws::MediaTailor::ClipRange');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DurationMillis => (is => 'ro', isa => 'Int');
  has LiveSourceName => (is => 'ro', isa => 'Str');
  has ProgramName => (is => 'ro', isa => 'Str');
  has ScheduledStartTime => (is => 'ro', isa => 'Str');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has VodSourceName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateProgramResponse

=head1 ATTRIBUTES


=head2 AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]

The ad break configuration settings.


=head2 Arn => Str

The ARN to assign to the program.


=head2 AudienceMedia => ArrayRef[L<Paws::MediaTailor::AudienceMedia>]

The list of AudienceMedia defined in program.


=head2 ChannelName => Str

The name to assign to the channel for this program.


=head2 ClipRange => L<Paws::MediaTailor::ClipRange>

The clip range configuration settings.


=head2 CreationTime => Str

The time the program was created.


=head2 DurationMillis => Int

The duration of the live program in milliseconds.


=head2 LiveSourceName => Str

The name of the LiveSource for this Program.


=head2 ProgramName => Str

The name to assign to this program.


=head2 ScheduledStartTime => Str

The scheduled start time for this Program.


=head2 SourceLocationName => Str

The name to assign to the source location for this program.


=head2 VodSourceName => Str

The name that's used to refer to a VOD source.


=head2 _request_id => Str


=cut

