
package Paws::Connect::SearchQueuesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Queues => (is => 'ro', isa => 'ArrayRef[Paws::Connect::Queue]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchQueuesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of queues which matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Queues => ArrayRef[L<Paws::Connect::Queue>]

Information about the queues.


=head2 _request_id => Str


=cut

