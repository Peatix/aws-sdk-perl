
package Paws::MediaTailor::GetPrefetchScheduleResponse;
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

Paws::MediaTailor::GetPrefetchScheduleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the prefetch schedule.


=head2 Consumption => L<Paws::MediaTailor::PrefetchConsumption>

The configuration settings for how and when MediaTailor consumes
prefetched ads from the ad decision server for single prefetch
schedules. Each consumption configuration contains an end time and an
optional start time that define the I<consumption window>. Prefetch
schedules automatically expire no earlier than seven days after the end
time.


=head2 Name => Str

The name of the prefetch schedule. The name must be unique among all
prefetch schedules that are associated with the specified playback
configuration.


=head2 PlaybackConfigurationName => Str

The name of the playback configuration to create the prefetch schedule
for.


=head2 RecurringPrefetchConfiguration => L<Paws::MediaTailor::RecurringPrefetchConfiguration>

The configuration that defines how and when MediaTailor performs ad
prefetching in a live event.


=head2 Retrieval => L<Paws::MediaTailor::PrefetchRetrieval>

A complex type that contains settings for prefetch retrieval from the
ad decision server (ADS).


=head2 ScheduleType => Str

The frequency that MediaTailor creates prefetch schedules. C<SINGLE>
indicates that this schedule applies to one ad break. C<RECURRING>
indicates that MediaTailor automatically creates a schedule for each ad
avail in a live event.

Valid values are: C<"SINGLE">, C<"RECURRING">
=head2 StreamId => Str

An optional stream identifier that you can specify in order to prefetch
for multiple streams that use the same playback configuration.


=head2 _request_id => Str


=cut

