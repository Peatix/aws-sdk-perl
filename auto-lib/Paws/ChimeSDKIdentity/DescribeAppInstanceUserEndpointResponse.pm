
package Paws::ChimeSDKIdentity::DescribeAppInstanceUserEndpointResponse;
  use Moose;
  has AppInstanceUserEndpoint => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceUserEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::DescribeAppInstanceUserEndpointResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserEndpoint => L<Paws::ChimeSDKIdentity::AppInstanceUserEndpoint>

The full details of an C<AppInstanceUserEndpoint>: the
C<AppInstanceUserArn>, ID, name, type, resource ARN, attributes, allow
messages, state, and created and last updated timestamps. All
timestamps use epoch milliseconds.


=head2 _request_id => Str


=cut

