
package Paws::NetworkManager::GetNetworkTelemetryResponse;
  use Moose;
  has NetworkTelemetry => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::NetworkTelemetry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkTelemetryResponse

=head1 ATTRIBUTES


=head2 NetworkTelemetry => ArrayRef[L<Paws::NetworkManager::NetworkTelemetry>]

The network telemetry.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

