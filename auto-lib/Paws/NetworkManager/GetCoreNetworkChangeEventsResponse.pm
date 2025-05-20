
package Paws::NetworkManager::GetCoreNetworkChangeEventsResponse;
  use Moose;
  has CoreNetworkChangeEvents => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::CoreNetworkChangeEvent]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCoreNetworkChangeEventsResponse

=head1 ATTRIBUTES


=head2 CoreNetworkChangeEvents => ArrayRef[L<Paws::NetworkManager::CoreNetworkChangeEvent>]

The response to C<GetCoreNetworkChangeEventsRequest>.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

