
package Paws::EC2::GetIpamDiscoveredResourceCidrsResult;
  use Moose;
  has IpamDiscoveredResourceCidrs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamDiscoveredResourceCidr]', request_name => 'ipamDiscoveredResourceCidrSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamDiscoveredResourceCidrsResult

=head1 ATTRIBUTES


=head2 IpamDiscoveredResourceCidrs => ArrayRef[L<Paws::EC2::IpamDiscoveredResourceCidr>]

Discovered resource CIDRs.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

