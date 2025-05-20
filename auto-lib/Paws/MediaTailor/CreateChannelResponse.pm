
package Paws::MediaTailor::CreateChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Audiences => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChannelName => (is => 'ro', isa => 'Str');
  has ChannelState => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FillerSlate => (is => 'ro', isa => 'Paws::MediaTailor::SlateSource');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::ResponseOutputItem]');
  has PlaybackMode => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Tier => (is => 'ro', isa => 'Str');
  has TimeShiftConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::TimeShiftConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateChannelResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) to assign to the channel.


=head2 Audiences => ArrayRef[Str|Undef]

The list of audiences defined in channel.


=head2 ChannelName => Str

The name to assign to the channel.


=head2 ChannelState => Str

Indicates whether the channel is in a running state or not.

Valid values are: C<"RUNNING">, C<"STOPPED">
=head2 CreationTime => Str

The timestamp of when the channel was created.


=head2 FillerSlate => L<Paws::MediaTailor::SlateSource>

Contains information about the slate used to fill gaps between programs
in the schedule.


=head2 LastModifiedTime => Str

The timestamp of when the channel was last modified.


=head2 Outputs => ArrayRef[L<Paws::MediaTailor::ResponseOutputItem>]

The output properties to assign to the channel.


=head2 PlaybackMode => Str

The playback mode to assign to the channel.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the channel. Tags are key-value pairs that you
can associate with Amazon resources to help with organization, access
control, and cost tracking. For more information, see Tagging AWS
Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).


=head2 Tier => Str

The tier of the channel.


=head2 TimeShiftConfiguration => L<Paws::MediaTailor::TimeShiftConfiguration>

The time-shifted viewing configuration assigned to the channel.


=head2 _request_id => Str


=cut

