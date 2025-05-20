
package Paws::MediaTailor::DescribeProgramResponse;
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

Paws::MediaTailor::DescribeProgramResponse

=head1 ATTRIBUTES


=head2 AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]

The ad break configuration settings.


=head2 Arn => Str

The ARN of the program.


=head2 AudienceMedia => ArrayRef[L<Paws::MediaTailor::AudienceMedia>]

The list of AudienceMedia defined in program.


=head2 ChannelName => Str

The name of the channel that the program belongs to.


=head2 ClipRange => L<Paws::MediaTailor::ClipRange>

The clip range configuration settings.


=head2 CreationTime => Str

The timestamp of when the program was created.


=head2 DurationMillis => Int

The duration of the live program in milliseconds.


=head2 LiveSourceName => Str

The name of the LiveSource for this Program.


=head2 ProgramName => Str

The name of the program.


=head2 ScheduledStartTime => Str

The date and time that the program is scheduled to start in ISO 8601
format and Coordinated Universal Time (UTC). For example, the value
2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.


=head2 SourceLocationName => Str

The source location name.


=head2 VodSourceName => Str

The name that's used to refer to a VOD source.


=head2 _request_id => Str


=cut

