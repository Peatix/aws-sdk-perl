
package Paws::CustomerProfiles::ListEventStreamsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventStreamSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListEventStreamsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::EventStreamSummary>]

Contains summary information about an EventStream.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

