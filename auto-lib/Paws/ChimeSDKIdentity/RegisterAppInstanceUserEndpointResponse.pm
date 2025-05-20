
package Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpointResponse;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str');
  has EndpointId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpointResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.


=head2 EndpointId => Str

The unique identifier of the C<AppInstanceUserEndpoint>.


=head2 _request_id => Str


=cut

