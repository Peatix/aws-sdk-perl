
package Paws::MediaTailor::CreatePrefetchSchedule;
  use Moose;
  has Consumption => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchConsumption');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaybackConfigurationName', required => 1);
  has RecurringPrefetchConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::RecurringPrefetchConfiguration');
  has Retrieval => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchRetrieval');
  has ScheduleType => (is => 'ro', isa => 'Str');
  has StreamId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrefetchSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prefetchSchedule/{PlaybackConfigurationName}/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreatePrefetchScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreatePrefetchSchedule - Arguments for method CreatePrefetchSchedule on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrefetchSchedule on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreatePrefetchSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrefetchSchedule.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreatePrefetchScheduleResponse =
      $api . mediatailor->CreatePrefetchSchedule(
      Name                      => 'My__string',
      PlaybackConfigurationName => 'My__string',
      Consumption               => {
        EndTime               => '1970-01-01T01:00:00',
        AvailMatchingCriteria => [
          {
            DynamicVariable => 'My__string',
            Operator        => 'EQUALS',       # values: EQUALS

          },
          ...
        ],    # OPTIONAL
        StartTime => '1970-01-01T01:00:00',
      },    # OPTIONAL
      RecurringPrefetchConfiguration => {
        EndTime              => '1970-01-01T01:00:00',
        RecurringConsumption => {
          AvailMatchingCriteria => [
            {
              DynamicVariable => 'My__string',
              Operator        => 'EQUALS',       # values: EQUALS

            },
            ...
          ],    # OPTIONAL
          RetrievedAdExpirationSeconds => 1,    # OPTIONAL
        },
        RecurringRetrieval => {
          DelayAfterAvailEndSeconds => 1,                           # OPTIONAL
          DynamicVariables => { 'My__string' => 'My__string', },    # OPTIONAL
          TrafficShapingRetrievalWindow => {
            RetrievalWindowDurationSeconds => 1,                    # OPTIONAL
          },    # OPTIONAL
          TrafficShapingType =>
            'RETRIEVAL_WINDOW',    # values: RETRIEVAL_WINDOW; OPTIONAL
        },
        StartTime => '1970-01-01T01:00:00',
      },    # OPTIONAL
      Retrieval => {
        EndTime          => '1970-01-01T01:00:00',
        DynamicVariables => { 'My__string' => 'My__string', },    # OPTIONAL
        StartTime        => '1970-01-01T01:00:00',
        TrafficShapingRetrievalWindow => {
          RetrievalWindowDurationSeconds => 1,                    # OPTIONAL
        },    # OPTIONAL
        TrafficShapingType =>
          'RETRIEVAL_WINDOW',    # values: RETRIEVAL_WINDOW; OPTIONAL
      },    # OPTIONAL
      ScheduleType => 'SINGLE',        # OPTIONAL
      StreamId     => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn         = $CreatePrefetchScheduleResponse->Arn;
    my $Consumption = $CreatePrefetchScheduleResponse->Consumption;
    my $Name        = $CreatePrefetchScheduleResponse->Name;
    my $PlaybackConfigurationName =
      $CreatePrefetchScheduleResponse->PlaybackConfigurationName;
    my $RecurringPrefetchConfiguration =
      $CreatePrefetchScheduleResponse->RecurringPrefetchConfiguration;
    my $Retrieval    = $CreatePrefetchScheduleResponse->Retrieval;
    my $ScheduleType = $CreatePrefetchScheduleResponse->ScheduleType;
    my $StreamId     = $CreatePrefetchScheduleResponse->StreamId;

    # Returns a L<Paws::MediaTailor::CreatePrefetchScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreatePrefetchSchedule>

=head1 ATTRIBUTES


=head2 Consumption => L<Paws::MediaTailor::PrefetchConsumption>

The configuration settings for how and when MediaTailor consumes
prefetched ads from the ad decision server for single prefetch
schedules. Each consumption configuration contains an end time and an
optional start time that define the I<consumption window>. Prefetch
schedules automatically expire no earlier than seven days after the end
time.



=head2 B<REQUIRED> Name => Str

The name to assign to the schedule request.



=head2 B<REQUIRED> PlaybackConfigurationName => Str

The name to assign to the playback configuration.



=head2 RecurringPrefetchConfiguration => L<Paws::MediaTailor::RecurringPrefetchConfiguration>

The configuration that defines how and when MediaTailor performs ad
prefetching in a live event.



=head2 Retrieval => L<Paws::MediaTailor::PrefetchRetrieval>

The configuration settings for retrieval of prefetched ads from the ad
decision server. Only one set of prefetched ads will be retrieved and
subsequently consumed for each ad break.



=head2 ScheduleType => Str

The frequency that MediaTailor creates prefetch schedules. C<SINGLE>
indicates that this schedule applies to one ad break. C<RECURRING>
indicates that MediaTailor automatically creates a schedule for each ad
avail in a live event.

For more information about the prefetch types and when you might use
each, see Prefetching ads in Elemental MediaTailor.
(https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)

Valid values are: C<"SINGLE">, C<"RECURRING">

=head2 StreamId => Str

An optional stream identifier that MediaTailor uses to prefetch ads for
multiple streams that use the same playback configuration. If
C<StreamId> is specified, MediaTailor returns all of the prefetch
schedules with an exact match on C<StreamId>. If not specified,
MediaTailor returns all of the prefetch schedules for the playback
configuration, regardless of C<StreamId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrefetchSchedule in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

