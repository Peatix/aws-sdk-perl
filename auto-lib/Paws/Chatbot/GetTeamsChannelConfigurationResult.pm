
package Paws::Chatbot::GetTeamsChannelConfigurationResult;
  use Moose;
  has ChannelConfiguration => (is => 'ro', isa => 'Paws::Chatbot::TeamsChannelConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::GetTeamsChannelConfigurationResult

=head1 ATTRIBUTES


=head2 ChannelConfiguration => L<Paws::Chatbot::TeamsChannelConfiguration>

The configuration for a Microsoft Teams channel configured with AWS
Chatbot.


=head2 _request_id => Str


=cut

