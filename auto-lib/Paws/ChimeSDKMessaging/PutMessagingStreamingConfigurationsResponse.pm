
package Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurationsResponse;
  use Moose;
  has StreamingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::StreamingConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurationsResponse

=head1 ATTRIBUTES


=head2 StreamingConfigurations => ArrayRef[L<Paws::ChimeSDKMessaging::StreamingConfiguration>]

The requested streaming configurations.


=head2 _request_id => Str


=cut

