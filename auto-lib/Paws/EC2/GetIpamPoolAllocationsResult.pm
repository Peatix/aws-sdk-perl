
package Paws::EC2::GetIpamPoolAllocationsResult;
  use Moose;
  has IpamPoolAllocations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamPoolAllocation]', request_name => 'ipamPoolAllocationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamPoolAllocationsResult

=head1 ATTRIBUTES


=head2 IpamPoolAllocations => ArrayRef[L<Paws::EC2::IpamPoolAllocation>]

The IPAM pool allocations you want information on.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

