
package Paws::MemoryDB::DescribeSubnetGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::SubnetGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeSubnetGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 SubnetGroups => ArrayRef[L<Paws::MemoryDB::SubnetGroup>]

A list of subnet groups. Each element in the list contains detailed
information about one group.


=head2 _request_id => Str


=cut

1;