
package Paws::EC2::GetIpamPoolCidrsResult;
  use Moose;
  has IpamPoolCidrs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamPoolCidr]', request_name => 'ipamPoolCidrSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamPoolCidrsResult

=head1 ATTRIBUTES


=head2 IpamPoolCidrs => ArrayRef[L<Paws::EC2::IpamPoolCidr>]

Information about the CIDRs provisioned to an IPAM pool.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

