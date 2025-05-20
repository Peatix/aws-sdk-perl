
package Paws::Chatbot::DescribeChimeWebhookConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WebhookConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::ChimeWebhookConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DescribeChimeWebhookConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 WebhookConfigurations => ArrayRef[L<Paws::Chatbot::ChimeWebhookConfiguration>]

A list of Amazon Chime webhooks associated with the account.


=head2 _request_id => Str


=cut

