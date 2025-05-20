
package Paws::NetworkManager::GetCoreNetworkChangeSetResponse;
  use Moose;
  has CoreNetworkChanges => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::CoreNetworkChange]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCoreNetworkChangeSetResponse

=head1 ATTRIBUTES


=head2 CoreNetworkChanges => ArrayRef[L<Paws::NetworkManager::CoreNetworkChange>]

Describes a core network changes.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

