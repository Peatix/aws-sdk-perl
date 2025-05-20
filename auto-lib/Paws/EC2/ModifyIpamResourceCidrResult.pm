
package Paws::EC2::ModifyIpamResourceCidrResult;
  use Moose;
  has IpamResourceCidr => (is => 'ro', isa => 'Paws::EC2::IpamResourceCidr', request_name => 'ipamResourceCidr', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIpamResourceCidrResult

=head1 ATTRIBUTES


=head2 IpamResourceCidr => L<Paws::EC2::IpamResourceCidr>

The CIDR of the resource.


=head2 _request_id => Str


=cut

