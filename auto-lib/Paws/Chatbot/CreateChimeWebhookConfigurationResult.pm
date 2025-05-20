
package Paws::Chatbot::CreateChimeWebhookConfigurationResult;
  use Moose;
  has WebhookConfiguration => (is => 'ro', isa => 'Paws::Chatbot::ChimeWebhookConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::CreateChimeWebhookConfigurationResult

=head1 ATTRIBUTES


=head2 WebhookConfiguration => L<Paws::Chatbot::ChimeWebhookConfiguration>

An Amazon Chime webhook configuration.


=head2 _request_id => Str


=cut

