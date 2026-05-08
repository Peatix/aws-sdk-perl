package Paws::ConnectParticipant;
  use Moose;
  sub service { 'participant.connect' }
  sub signing_name { 'execute-api' }
  sub version { '2018-09-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelParticipantAuthentication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::CancelParticipantAuthentication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteAttachmentUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::CompleteAttachmentUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateParticipantConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::CreateParticipantConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::DescribeView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectParticipant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::DisconnectParticipant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::GetAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthenticationUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::GetAuthenticationUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTranscript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::GetTranscript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::SendEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::SendMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAttachmentUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::StartAttachmentUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelParticipantAuthentication CompleteAttachmentUpload CreateParticipantConnection DescribeView DisconnectParticipant GetAttachment GetAuthenticationUrl GetTranscript SendEvent SendMessage StartAttachmentUpload / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant - Perl Interface to AWS Amazon Connect Participant Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectParticipant');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

=over

=item *

Participant Service actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Participant_Service.html)

=item *

Participant Service data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Participant_Service.html)

=back

Amazon Connect is an easy-to-use omnichannel cloud contact center
service that enables companies of any size to deliver superior customer
service at a lower cost. Amazon Connect communications capabilities
make it easy for companies to deliver personalized interactions across
communication channels, including chat.

Use the Amazon Connect Participant Service to manage participants (for
example, agents, customers, and managers listening in), and to send
messages and events within a chat contact. The APIs in the service
enable the following: sending chat messages, attachment sharing,
managing a participant's connection state and message events, and
retrieving chat transcripts.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelParticipantAuthentication

=over

=item ConnectionToken => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::CancelParticipantAuthentication>

Returns: a L<Paws::ConnectParticipant::CancelParticipantAuthenticationResponse> instance

Cancels the authentication session. The opted out branch of the
Authenticate Customer flow block will be taken.

The current supported channel is chat. This API is not supported for
Apple Messages for Business, WhatsApp, or SMS chats.


=head2 CompleteAttachmentUpload

=over

=item AttachmentIds => ArrayRef[Str|Undef]

=item ClientToken => Str

=item ConnectionToken => Str


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::CompleteAttachmentUpload>

Returns: a L<Paws::ConnectParticipant::CompleteAttachmentUploadResponse> instance

Allows you to confirm that the attachment has been uploaded using the
pre-signed URL provided in StartAttachmentUpload API. A conflict
exception is thrown when an attachment with that identifier is already
being uploaded.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 CreateParticipantConnection

=over

=item ParticipantToken => Str

=item [ConnectParticipant => Bool]

=item [Type => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::CreateParticipantConnection>

Returns: a L<Paws::ConnectParticipant::CreateParticipantConnectionResponse> instance

Creates the participant's connection.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ParticipantToken> is used for invoking this API instead of
C<ConnectionToken>.

The participant token is valid for the lifetime of the participant
E<ndash> until they are part of a contact.

The response URL for C<WEBSOCKET> Type has a connect expiry timeout of
100s. Clients must manually connect to the returned websocket URL and
subscribe to the desired topic.

For chat, you need to publish the following on the established
websocket connection:

C<{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}>

Upon websocket URL expiry, as specified in the response
ConnectionExpiry parameter, clients need to call this API again to
obtain a new websocket URL and perform the same steps as before.

B<Message streaming support>: This API can also be used together with
the StartContactStreaming
(https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
API to create a participant connection for chat contacts that are not
using a websocket. For more information about message streaming, Enable
real-time chat message streaming
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
in the I<Amazon Connect Administrator Guide>.

B<Feature specifications>: For information about feature
specifications, such as the allowed number of open websocket
connections per participant, see Feature specifications
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the I<Amazon Connect Administrator Guide>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 DescribeView

=over

=item ConnectionToken => Str

=item ViewToken => Str


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::DescribeView>

Returns: a L<Paws::ConnectParticipant::DescribeViewResponse> instance

Retrieves the view for the specified view token.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).


=head2 DisconnectParticipant

=over

=item ConnectionToken => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::DisconnectParticipant>

Returns: a L<Paws::ConnectParticipant::DisconnectParticipantResponse> instance

Disconnects a participant.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 GetAttachment

=over

=item AttachmentId => Str

=item ConnectionToken => Str

=item [UrlExpiryInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::GetAttachment>

Returns: a L<Paws::ConnectParticipant::GetAttachmentResponse> instance

Provides a pre-signed URL for download of a completed attachment. This
is an asynchronous API for use with active contacts.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 GetAuthenticationUrl

=over

=item ConnectionToken => Str

=item RedirectUri => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::GetAuthenticationUrl>

Returns: a L<Paws::ConnectParticipant::GetAuthenticationUrlResponse> instance

Retrieves the AuthenticationUrl for the current authentication session
for the AuthenticateCustomer flow block.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

=over

=item *

This API can only be called within one minute of receiving the
authenticationInitiated event.

=item *

The current supported channel is chat. This API is not supported for
Apple Messages for Business, WhatsApp, or SMS chats.

=back



=head2 GetTranscript

=over

=item ConnectionToken => Str

=item [ContactId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ScanDirection => Str]

=item [SortOrder => Str]

=item [StartPosition => L<Paws::ConnectParticipant::StartPosition>]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::GetTranscript>

Returns: a L<Paws::ConnectParticipant::GetTranscriptResponse> instance

Retrieves a transcript of the session, including details about any
attachments. For information about accessing past chat contact
transcripts for a persistent chat, see Enable persistent chat
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

If you have a process that consumes events in the transcript of an chat
that has ended, note that chat transcripts contain the following event
content types if the event has occurred during the chat session:

=over

=item *

C<application/vnd.amazonaws.connect.event.participant.left>

=item *

C<application/vnd.amazonaws.connect.event.participant.joined>

=item *

C<application/vnd.amazonaws.connect.event.chat.ended>

=item *

C<application/vnd.amazonaws.connect.event.transfer.succeeded>

=item *

C<application/vnd.amazonaws.connect.event.transfer.failed>

=back

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 SendEvent

=over

=item ConnectionToken => Str

=item ContentType => Str

=item [ClientToken => Str]

=item [Content => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::SendEvent>

Returns: a L<Paws::ConnectParticipant::SendEventResponse> instance

The C<application/vnd.amazonaws.connect.event.connection.acknowledged>
ContentType will no longer be supported starting December 31, 2024.
This event has been migrated to the CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
API using the C<ConnectParticipant> field.

Sends an event. Message receipts are not supported when there are more
than two active participants in the chat. Using the SendEvent API for
message receipts when a supervisor is barged-in will result in a
conflict exception.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 SendMessage

=over

=item ConnectionToken => Str

=item Content => Str

=item ContentType => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::SendMessage>

Returns: a L<Paws::ConnectParticipant::SendMessageResponse> instance

Sends a message.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


=head2 StartAttachmentUpload

=over

=item AttachmentName => Str

=item AttachmentSizeInBytes => Int

=item ClientToken => Str

=item ConnectionToken => Str

=item ContentType => Str


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::StartAttachmentUpload>

Returns: a L<Paws::ConnectParticipant::StartAttachmentUploadResponse> instance

Provides a pre-signed Amazon S3 URL in response for uploading the file
directly to S3.

For security recommendations, see Amazon Connect Chat security best
practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

C<ConnectionToken> is used for invoking this API instead of
C<ParticipantToken>.

The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

