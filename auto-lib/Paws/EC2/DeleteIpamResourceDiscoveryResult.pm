
package Paws::EC2::DeleteIpamResourceDiscoveryResult;
  use Moose;
  has IpamResourceDiscovery => (is => 'ro', isa => 'Paws::EC2::IpamResourceDiscovery', request_name => 'ipamResourceDiscovery', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteIpamResourceDiscoveryResult

=head1 ATTRIBUTES


=head2 IpamResourceDiscovery => L<Paws::EC2::IpamResourceDiscovery>

The IPAM resource discovery.


=head2 _request_id => Str


=cut

