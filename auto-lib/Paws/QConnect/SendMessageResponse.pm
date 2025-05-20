
package Paws::QConnect::SendMessageResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::QConnect::MessageConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has NextMessageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMessageToken', required => 1);
  has RequestMessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMessageId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SendMessageResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::QConnect::MessageConfiguration>

The configuration of the SendMessage
(https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html)
request.


=head2 B<REQUIRED> NextMessageToken => Str

The token for the next message, used by GetNextMessage.


=head2 B<REQUIRED> RequestMessageId => Str

The identifier of the submitted message.


=head2 _request_id => Str


=cut

