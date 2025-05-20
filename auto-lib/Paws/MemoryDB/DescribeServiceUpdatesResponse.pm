
package Paws::MemoryDB::DescribeServiceUpdatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceUpdates => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::ServiceUpdate]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeServiceUpdatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 ServiceUpdates => ArrayRef[L<Paws::MemoryDB::ServiceUpdate>]

A list of service updates


=head2 _request_id => Str


=cut

1;