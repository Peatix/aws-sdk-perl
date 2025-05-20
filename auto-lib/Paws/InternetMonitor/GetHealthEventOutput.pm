
package Paws::InternetMonitor::GetHealthEventOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EndedAt => (is => 'ro', isa => 'Str');
  has EventArn => (is => 'ro', isa => 'Str', required => 1);
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has HealthScoreThreshold => (is => 'ro', isa => 'Num');
  has ImpactedLocations => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::ImpactedLocation]', required => 1);
  has ImpactType => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has PercentOfTotalTrafficImpacted => (is => 'ro', isa => 'Num');
  has StartedAt => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetHealthEventOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time when a health event was created.


=head2 EndedAt => Str

The time when a health event was resolved. If the health event is still
active, the end time is not set.


=head2 B<REQUIRED> EventArn => Str

The Amazon Resource Name (ARN) of the event.


=head2 B<REQUIRED> EventId => Str

The internally-generated identifier of a health event.


=head2 HealthScoreThreshold => Num

The threshold percentage for a health score that determines, along with
other configuration information, when Internet Monitor creates a health
event when there's an internet issue that affects your application end
users.


=head2 B<REQUIRED> ImpactedLocations => ArrayRef[L<Paws::InternetMonitor::ImpactedLocation>]

The locations affected by a health event.


=head2 B<REQUIRED> ImpactType => Str

The type of impairment of a specific health event.

Valid values are: C<"AVAILABILITY">, C<"PERFORMANCE">, C<"LOCAL_AVAILABILITY">, C<"LOCAL_PERFORMANCE">
=head2 B<REQUIRED> LastUpdatedAt => Str

The time when a health event was last updated or recalculated.


=head2 PercentOfTotalTrafficImpacted => Num

The impact on total traffic that a health event has, in increased
latency or reduced availability. This is the percentage of how much
latency has increased or availability has decreased during the event,
compared to what is typical for traffic from this client location to
the Amazon Web Services location using this client network.


=head2 B<REQUIRED> StartedAt => Str

The time when a health event started.


=head2 B<REQUIRED> Status => Str

The status of a health event.

Valid values are: C<"ACTIVE">, C<"RESOLVED">
=head2 _request_id => Str


=cut

