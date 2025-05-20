
package Paws::ELBv2::ModifyIpPoolsOutput;
  use Moose;
  has IpamPools => (is => 'ro', isa => 'Paws::ELBv2::IpamPools');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyIpPoolsOutput

=head1 ATTRIBUTES


=head2 IpamPools => L<Paws::ELBv2::IpamPools>

The IPAM pool ID.


=head2 _request_id => Str


=cut

