
package Paws::NetworkManager::GetRouteAnalysisResponse;
  use Moose;
  has RouteAnalysis => (is => 'ro', isa => 'Paws::NetworkManager::RouteAnalysis');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetRouteAnalysisResponse

=head1 ATTRIBUTES


=head2 RouteAnalysis => L<Paws::NetworkManager::RouteAnalysis>

The route analysis.


=head2 _request_id => Str


=cut

