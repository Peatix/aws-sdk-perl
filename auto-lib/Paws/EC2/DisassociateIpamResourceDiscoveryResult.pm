
package Paws::EC2::DisassociateIpamResourceDiscoveryResult;
  use Moose;
  has IpamResourceDiscoveryAssociation => (is => 'ro', isa => 'Paws::EC2::IpamResourceDiscoveryAssociation', request_name => 'ipamResourceDiscoveryAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateIpamResourceDiscoveryResult

=head1 ATTRIBUTES


=head2 IpamResourceDiscoveryAssociation => L<Paws::EC2::IpamResourceDiscoveryAssociation>

A resource discovery association.


=head2 _request_id => Str


=cut

