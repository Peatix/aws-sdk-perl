
package Paws::CustomerProfiles::GetEventTriggerResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventTriggerConditions => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventTriggerCondition]');
  has EventTriggerLimits => (is => 'ro', isa => 'Paws::CustomerProfiles::EventTriggerLimits');
  has EventTriggerName => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has ObjectTypeName => (is => 'ro', isa => 'Str');
  has SegmentFilter => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetEventTriggerResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the event trigger was created.


=head2 Description => Str

The description of the event trigger.


=head2 EventTriggerConditions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerCondition>]

A list of conditions that determine when an event should trigger the
destination.


=head2 EventTriggerLimits => L<Paws::CustomerProfiles::EventTriggerLimits>

Defines limits controlling whether an event triggers the destination,
based on ingestion latency and the number of invocations per profile
over specific time periods.


=head2 EventTriggerName => Str

The unique name of the event trigger.


=head2 LastUpdatedAt => Str

The timestamp of when the event trigger was most recently updated.


=head2 ObjectTypeName => Str

The unique name of the object type.


=head2 SegmentFilter => Str

The destination is triggered only for profiles that meet the criteria
of a segment definition.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

An array of key-value pairs to apply to this resource.


=head2 _request_id => Str


=cut

