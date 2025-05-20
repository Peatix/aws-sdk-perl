
package Paws::EC2::ProvisionIpamPoolCidrResult;
  use Moose;
  has IpamPoolCidr => (is => 'ro', isa => 'Paws::EC2::IpamPoolCidr', request_name => 'ipamPoolCidr', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProvisionIpamPoolCidrResult

=head1 ATTRIBUTES


=head2 IpamPoolCidr => L<Paws::EC2::IpamPoolCidr>

Information about the provisioned CIDR.


=head2 _request_id => Str


=cut

