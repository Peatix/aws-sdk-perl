
package Paws::MediaTailor::CreatePrefetchScheduleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Consumption => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchConsumption');
  has Name => (is => 'ro', isa => 'Str');
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str');
  has RecurringPrefetchConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::RecurringPrefetchConfiguration');
  has Retrieval => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchRetrieval');
  has ScheduleType => (is => 'ro', isa => 'Str');
  has StreamId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreatePrefetchScheduleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN to assign to the prefetch schedule.


=head2 Consumption => L<Paws::MediaTailor::PrefetchConsumption>

The configuration settings for how and when MediaTailor consumes
prefetched ads from the ad decision server for single prefetch
schedules. Each consumption configuration contains an end time and an
optional start time that define the I<consumption window>. Prefetch
schedules automatically expire no earlier than seven days after the end
time.


=head2 Name => Str

The name to assign to the prefetch schedule.


=head2 PlaybackConfigurationName => Str

The name to assign to the playback configuration.


=head2 RecurringPrefetchConfiguration => L<Paws::MediaTailor::RecurringPrefetchConfiguration>

The configuration that defines how MediaTailor performs recurring
prefetch.


=head2 Retrieval => L<Paws::MediaTailor::PrefetchRetrieval>

The configuration settings for retrieval of prefetched ads from the ad
decision server. Only one set of prefetched ads will be retrieved and
subsequently consumed for each ad break.


=head2 ScheduleType => Str

The frequency that MediaTailor creates prefetch schedules. C<SINGLE>
indicates that this schedule applies to one ad break. C<RECURRING>
indicates that MediaTailor automatically creates a schedule for each ad
avail in a live event.

Valid values are: C<"SINGLE">, C<"RECURRING">
=head2 StreamId => Str

An optional stream identifier that MediaTailor uses to prefetch ads for
multiple streams that use the same playback configuration. If
C<StreamId> is specified, MediaTailor returns all of the prefetch
schedules with an exact match on C<StreamId>. If not specified,
MediaTailor returns all of the prefetch schedules for the playback
configuration, regardless of C<StreamId>.


=head2 _request_id => Str


=cut

