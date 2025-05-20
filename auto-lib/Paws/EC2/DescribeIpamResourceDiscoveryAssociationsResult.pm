
package Paws::EC2::DescribeIpamResourceDiscoveryAssociationsResult;
  use Moose;
  has IpamResourceDiscoveryAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceDiscoveryAssociation]', request_name => 'ipamResourceDiscoveryAssociationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIpamResourceDiscoveryAssociationsResult

=head1 ATTRIBUTES


=head2 IpamResourceDiscoveryAssociations => ArrayRef[L<Paws::EC2::IpamResourceDiscoveryAssociation>]

The resource discovery associations.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

