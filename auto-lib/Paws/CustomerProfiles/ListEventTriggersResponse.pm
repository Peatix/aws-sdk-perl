
package Paws::CustomerProfiles::ListEventTriggersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventTriggerSummaryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListEventTriggersResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::EventTriggerSummaryItem>]

The list of Event Triggers.


=head2 NextToken => Str

The pagination token from the previous call to ListEventTriggers.


=head2 _request_id => Str


=cut

