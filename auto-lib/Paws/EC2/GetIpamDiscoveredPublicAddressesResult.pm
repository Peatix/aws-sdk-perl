
package Paws::EC2::GetIpamDiscoveredPublicAddressesResult;
  use Moose;
  has IpamDiscoveredPublicAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamDiscoveredPublicAddress]', request_name => 'ipamDiscoveredPublicAddressSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has OldestSampleTime => (is => 'ro', isa => 'Str', request_name => 'oldestSampleTime', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamDiscoveredPublicAddressesResult

=head1 ATTRIBUTES


=head2 IpamDiscoveredPublicAddresses => ArrayRef[L<Paws::EC2::IpamDiscoveredPublicAddress>]

IPAM discovered public addresses.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 OldestSampleTime => Str

The oldest successful resource discovery time.


=head2 _request_id => Str


=cut

