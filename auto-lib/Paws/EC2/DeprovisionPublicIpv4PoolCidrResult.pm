
package Paws::EC2::DeprovisionPublicIpv4PoolCidrResult;
  use Moose;
  has DeprovisionedAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'deprovisionedAddressSet', traits => ['NameInRequest',]);
  has PoolId => (is => 'ro', isa => 'Str', request_name => 'poolId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeprovisionPublicIpv4PoolCidrResult

=head1 ATTRIBUTES


=head2 DeprovisionedAddresses => ArrayRef[Str|Undef]

The deprovisioned CIDRs.


=head2 PoolId => Str

The ID of the pool that you deprovisioned the CIDR from.


=head2 _request_id => Str


=cut

