
package Paws::EC2::ProvisionPublicIpv4PoolCidrResult;
  use Moose;
  has PoolAddressRange => (is => 'ro', isa => 'Paws::EC2::PublicIpv4PoolRange', request_name => 'poolAddressRange', traits => ['NameInRequest',]);
  has PoolId => (is => 'ro', isa => 'Str', request_name => 'poolId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProvisionPublicIpv4PoolCidrResult

=head1 ATTRIBUTES


=head2 PoolAddressRange => L<Paws::EC2::PublicIpv4PoolRange>

Information about the address range of the public IPv4 pool.


=head2 PoolId => Str

The ID of the pool that you want to provision the CIDR to.


=head2 _request_id => Str


=cut

