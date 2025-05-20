
package Paws::Lightsail::GetLoadBalancerTlsPoliciesResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has TlsPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancerTlsPolicy]', traits => ['NameInRequest'], request_name => 'tlsPolicies' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerTlsPoliciesResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetLoadBalancerTlsPolicies> request and specify the next page token
using the C<pageToken> parameter.


=head2 TlsPolicies => ArrayRef[L<Paws::Lightsail::LoadBalancerTlsPolicy>]

An array of objects that describe the TLS security policies that are
available.


=head2 _request_id => Str


=cut

1;