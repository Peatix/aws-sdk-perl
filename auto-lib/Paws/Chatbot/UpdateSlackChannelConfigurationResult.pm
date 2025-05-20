
package Paws::Chatbot::UpdateSlackChannelConfigurationResult;
  use Moose;
  has ChannelConfiguration => (is => 'ro', isa => 'Paws::Chatbot::SlackChannelConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateSlackChannelConfigurationResult

=head1 ATTRIBUTES


=head2 ChannelConfiguration => L<Paws::Chatbot::SlackChannelConfiguration>

The configuration for a Slack channel configured with AWS Chatbot.


=head2 _request_id => Str


=cut

