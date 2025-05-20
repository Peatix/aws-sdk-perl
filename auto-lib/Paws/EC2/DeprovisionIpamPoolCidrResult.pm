
package Paws::EC2::DeprovisionIpamPoolCidrResult;
  use Moose;
  has IpamPoolCidr => (is => 'ro', isa => 'Paws::EC2::IpamPoolCidr', request_name => 'ipamPoolCidr', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeprovisionIpamPoolCidrResult

=head1 ATTRIBUTES


=head2 IpamPoolCidr => L<Paws::EC2::IpamPoolCidr>

The deprovisioned pool CIDR.


=head2 _request_id => Str


=cut

