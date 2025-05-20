
package Paws::Chatbot::UpdateChimeWebhookConfigurationResult;
  use Moose;
  has WebhookConfiguration => (is => 'ro', isa => 'Paws::Chatbot::ChimeWebhookConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateChimeWebhookConfigurationResult

=head1 ATTRIBUTES


=head2 WebhookConfiguration => L<Paws::Chatbot::ChimeWebhookConfiguration>

A Amazon Chime webhook configuration.


=head2 _request_id => Str


=cut

