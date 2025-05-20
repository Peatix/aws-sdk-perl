
package Paws::MemoryDB::DescribeACLsResponse;
  use Moose;
  has ACLs => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::ACL]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeACLsResponse

=head1 ATTRIBUTES


=head2 ACLs => ArrayRef[L<Paws::MemoryDB::ACL>]

The list of ACLs.


=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all
other arguments unchanged.


=head2 _request_id => Str


=cut

1;