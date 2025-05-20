
package Paws::EC2::AllocateIpamPoolCidrResult;
  use Moose;
  has IpamPoolAllocation => (is => 'ro', isa => 'Paws::EC2::IpamPoolAllocation', request_name => 'ipamPoolAllocation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateIpamPoolCidrResult

=head1 ATTRIBUTES


=head2 IpamPoolAllocation => L<Paws::EC2::IpamPoolAllocation>

Information about the allocation created.


=head2 _request_id => Str


=cut

