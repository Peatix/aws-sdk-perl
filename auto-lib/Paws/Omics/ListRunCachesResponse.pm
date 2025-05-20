
package Paws::Omics::ListRunCachesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Omics::RunCacheListItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListRunCachesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Omics::RunCacheListItem>]

Details about each run cache in the response.


=head2 NextToken => Str

Pagination token to retrieve additional run caches. If the response
does not have a C<nextToken>value, you have reached to the end of the
list.


=head2 _request_id => Str


=cut

