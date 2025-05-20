
package Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurationsResponse;
  use Moose;
  has StreamingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::StreamingConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurationsResponse

=head1 ATTRIBUTES


=head2 StreamingConfigurations => ArrayRef[L<Paws::ChimeSDKMessaging::StreamingConfiguration>]

The streaming settings.


=head2 _request_id => Str


=cut

