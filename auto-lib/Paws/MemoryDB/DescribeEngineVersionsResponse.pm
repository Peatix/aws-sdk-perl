
package Paws::MemoryDB::DescribeEngineVersionsResponse;
  use Moose;
  has EngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::EngineVersionInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeEngineVersionsResponse

=head1 ATTRIBUTES


=head2 EngineVersions => ArrayRef[L<Paws::MemoryDB::EngineVersionInfo>]

A list of engine version details. Each element in the list contains
detailed information about one engine version.


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 _request_id => Str


=cut

1;