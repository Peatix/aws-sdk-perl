
package Paws::LookoutEquipment::ListInferenceEventsResponse;
  use Moose;
  has InferenceEventSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::InferenceEventSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceEventsResponse

=head1 ATTRIBUTES


=head2 InferenceEventSummaries => ArrayRef[L<Paws::LookoutEquipment::InferenceEventSummary>]

Provides an array of information about the individual inference events
returned from the C<ListInferenceEvents> operation, including scheduler
used, event start time, event end time, diagnostics, and so on.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference executions.


=head2 _request_id => Str


=cut

1;