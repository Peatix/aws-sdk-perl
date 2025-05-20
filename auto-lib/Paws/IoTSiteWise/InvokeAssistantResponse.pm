
package Paws::IoTSiteWise::InvokeAssistantResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::IoTSiteWise::ResponseStream', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-iotsitewise-assistant-conversation-id', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::InvokeAssistantResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => L<Paws::IoTSiteWise::ResponseStream>




=head2 B<REQUIRED> ConversationId => Str

The ID of the conversation, in UUID format. This ID uniquely identifies
the conversation within IoT SiteWise.


=head2 _request_id => Str


=cut

