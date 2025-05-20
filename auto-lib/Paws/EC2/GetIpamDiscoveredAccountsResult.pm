
package Paws::EC2::GetIpamDiscoveredAccountsResult;
  use Moose;
  has IpamDiscoveredAccounts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamDiscoveredAccount]', request_name => 'ipamDiscoveredAccountSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamDiscoveredAccountsResult

=head1 ATTRIBUTES


=head2 IpamDiscoveredAccounts => ArrayRef[L<Paws::EC2::IpamDiscoveredAccount>]

Discovered accounts.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

