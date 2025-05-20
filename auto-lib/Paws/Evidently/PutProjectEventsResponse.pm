
package Paws::Evidently::PutProjectEventsResponse;
  use Moose;
  has EventResults => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::PutProjectEventsResultEntry]', traits => ['NameInRequest'], request_name => 'eventResults');
  has FailedEventCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'failedEventCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::PutProjectEventsResponse

=head1 ATTRIBUTES


=head2 EventResults => ArrayRef[L<Paws::Evidently::PutProjectEventsResultEntry>]

A structure that contains Evidently's response to the sent events,
including an event ID and error codes, if any.


=head2 FailedEventCount => Int

The number of events in the operation that could not be used by
Evidently.


=head2 _request_id => Str


=cut

