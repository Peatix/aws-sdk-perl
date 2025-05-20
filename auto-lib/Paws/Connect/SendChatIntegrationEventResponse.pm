
package Paws::Connect::SendChatIntegrationEventResponse;
  use Moose;
  has InitialContactId => (is => 'ro', isa => 'Str');
  has NewChatCreated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SendChatIntegrationEventResponse

=head1 ATTRIBUTES


=head2 InitialContactId => Str

Identifier of chat contact used to handle integration event. This may
be null if the integration event is not valid without an already
existing chat contact.


=head2 NewChatCreated => Bool

Whether handling the integration event resulted in creating a new chat
or acting on existing chat.


=head2 _request_id => Str


=cut

