
package Paws::EC2::DescribeIpamResourceDiscoveriesResult;
  use Moose;
  has IpamResourceDiscoveries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceDiscovery]', request_name => 'ipamResourceDiscoverySet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIpamResourceDiscoveriesResult

=head1 ATTRIBUTES


=head2 IpamResourceDiscoveries => ArrayRef[L<Paws::EC2::IpamResourceDiscovery>]

The resource discoveries.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

