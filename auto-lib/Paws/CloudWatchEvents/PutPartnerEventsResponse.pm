
package Paws::CloudWatchEvents::PutPartnerEventsResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PutPartnerEventsResultEntry]');
  has FailedEntryCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutPartnerEventsResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[L<Paws::CloudWatchEvents::PutPartnerEventsResultEntry>]

The results for each event entry the partner submitted in this request.
If the event was successfully submitted, the entry has the event ID in
it. Otherwise, you can use the error code and error message to identify
the problem with the entry.

For each record, the index of the response element is the same as the
index in the request array.


=head2 FailedEntryCount => Int

The number of events from this operation that could not be written to
the partner event bus.


=head2 _request_id => Str


=cut

1;