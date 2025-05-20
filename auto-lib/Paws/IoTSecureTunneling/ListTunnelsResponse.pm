
package Paws::IoTSecureTunneling::ListTunnelsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TunnelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSecureTunneling::TunnelSummary]', traits => ['NameInRequest'], request_name => 'tunnelSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::ListTunnelsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or null if there are
no additional results.


=head2 TunnelSummaries => ArrayRef[L<Paws::IoTSecureTunneling::TunnelSummary>]

A short description of the tunnels in an Amazon Web Services account.


=head2 _request_id => Str


=cut

1;