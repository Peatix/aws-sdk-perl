
package Paws::ChimeSDKIdentity::ListAppInstanceUserEndpointsResponse;
  use Moose;
  has AppInstanceUserEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::AppInstanceUserEndpointSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceUserEndpointsResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserEndpoints => ArrayRef[L<Paws::ChimeSDKIdentity::AppInstanceUserEndpointSummary>]

The information for each requested C<AppInstanceUserEndpoint>.


=head2 NextToken => Str

The token passed by previous API calls until all requested endpoints
are returned.


=head2 _request_id => Str


=cut

