
package Paws::EC2::CreateIpamPoolResult;
  use Moose;
  has IpamPool => (is => 'ro', isa => 'Paws::EC2::IpamPool', request_name => 'ipamPool', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpamPoolResult

=head1 ATTRIBUTES


=head2 IpamPool => L<Paws::EC2::IpamPool>

Information about the IPAM pool created.


=head2 _request_id => Str


=cut

