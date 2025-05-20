
package Paws::MemoryDB::DescribeEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Event]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::MemoryDB::Event>]

A list of events. Each element in the list contains detailed
information about one event.


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 _request_id => Str


=cut

1;