package Paws::Ivschat;
  use Moose;
  sub service { 'ivschat' }
  sub signing_name { 'ivschat' }
  sub version { '2020-07-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateChatToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::CreateChatToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::CreateLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::CreateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::DeleteLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::DeleteMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::DeleteRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::DisconnectUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::GetLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::GetRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::ListLoggingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRooms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::ListRooms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::SendEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::UpdateLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Ivschat::UpdateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateChatToken CreateLoggingConfiguration CreateRoom DeleteLoggingConfiguration DeleteMessage DeleteRoom DisconnectUser GetLoggingConfiguration GetRoom ListLoggingConfigurations ListRooms ListTagsForResource SendEvent TagResource UntagResource UpdateLoggingConfiguration UpdateRoom / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat - Perl Interface to AWS Amazon Interactive Video Service Chat

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Ivschat');
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

B<Introduction>

The Amazon IVS Chat control-plane API enables you to create and manage
Amazon IVS Chat resources. You also need to integrate with the Amazon
IVS Chat Messaging API
(https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html),
to enable users to interact with chat rooms in real time.

The API is an AWS regional service. For a list of supported regions and
Amazon IVS Chat HTTPS service endpoints, see the Amazon IVS Chat
information on the Amazon IVS page
(https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the I<AWS
General Reference>.

This document describes HTTP operations. There is a separate
I<messaging> API for managing Chat resources; see the Amazon IVS Chat
Messaging API Reference
(https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html).

B<Notes on terminology:>

=over

=item *

You create service applications using the Amazon IVS Chat API. We refer
to these as I<applications>.

=item *

You create front-end client applications (browser and Android/iOS apps)
using the Amazon IVS Chat Messaging API. We refer to these as
I<clients>.

=back

B<Resources>

The following resources are part of Amazon IVS Chat:

=over

=item *

B<LoggingConfiguration> E<mdash> A configuration that allows customers
to store and record sent messages in a chat room. See the Logging
Configuration endpoints for more information.

=item *

B<Room> E<mdash> The central Amazon IVS Chat resource through which
clients connect to and exchange chat messages. See the Room endpoints
for more information.

=back

B<Tagging>

A I<tag> is a metadata label that you assign to an AWS resource. A tag
comprises a I<key> and a I<value>, both set by you. For example, you
might set a tag as C<topic:nature> to label a particular video
category. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS Chat has no service-specific constraints
beyond what is documented there.

Tags can help you identify and organize your AWS resources. For
example, you can use the same tag for different resources to indicate
that they are related. You can also use tags to manage access (see
Access Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

The Amazon IVS Chat API has these tag-related operations: TagResource,
UntagResource, and ListTagsForResource. The following resource supports
tagging: Room.

At most 50 tags can be applied to a resource.

B<API Access Security>

Your Amazon IVS Chat applications (service applications and clients)
must be authenticated and authorized to access Amazon IVS Chat
resources. Note the differences between these concepts:

=over

=item *

I<Authentication> is about verifying identity. Requests to the Amazon
IVS Chat API must be signed to verify your identity.

=item *

I<Authorization> is about granting permissions. Your IAM roles need to
have permissions for Amazon IVS Chat API requests.

=back

Users (viewers) connect to a room using secure access tokens that you
create using the CreateChatToken operation through the AWS SDK. You
call CreateChatToken for every userE<rsquo>s chat session, passing
identity and authorization information about the user.

B<Signing API Requests>

HTTP API requests must be signed with an AWS SigV4 signature using your
AWS security credentials. The AWS Command Line Interface (CLI) and the
AWS SDKs take care of signing the underlying API calls for you.
However, if your application calls the Amazon IVS Chat HTTP API
directly, itE<rsquo>s your responsibility to sign the requests.

You generate a signature using valid AWS credentials for an IAM role
that has permission to perform the requested action. For example,
DeleteMessage requests must be made using an IAM role that has the
C<ivschat:DeleteMessage> permission.

For more information:

=over

=item *

Authentication and generating signatures E<mdash> See Authenticating
Requests (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<Amazon Web Services General Reference>.

=item *

Managing Amazon IVS permissions E<mdash> See Identity and Access
Management
(https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html) on
the Security page of the I<Amazon IVS User Guide>.

=back

B<Amazon Resource Names (ARNs)>

ARNs uniquely identify AWS resources. An ARN is required when you need
to specify a resource unambiguously across all of AWS, such as in IAM
policies and API calls. For more information, see Amazon Resource Names
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateChatToken

=over

=item RoomIdentifier => Str

=item UserId => Str

=item [Attributes => L<Paws::Ivschat::ChatTokenAttributes>]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [SessionDurationInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::Ivschat::CreateChatToken>

Returns: a L<Paws::Ivschat::CreateChatTokenResponse> instance

Creates an encrypted token that is used by a chat participant to
establish an individual WebSocket chat connection to a room. When the
token is used to connect to chat, the connection is valid for the
session duration specified in the request. The token becomes invalid at
the token-expiration timestamp included in the response.

Use the C<capabilities> field to permit an end user to send messages or
moderate a room.

The C<attributes> field securely attaches structured data to the chat
session; the data is included within each message sent by the end user
and received by other participants in the room. Common use cases for
attributes include passing end-user profile data like an icon, display
name, colors, badges, and other display features.

Encryption keys are owned by Amazon IVS Chat and never used directly by
your application.


=head2 CreateLoggingConfiguration

=over

=item DestinationConfiguration => L<Paws::Ivschat::DestinationConfiguration>

=item [Name => Str]

=item [Tags => L<Paws::Ivschat::Tags>]


=back

Each argument is described in detail in: L<Paws::Ivschat::CreateLoggingConfiguration>

Returns: a L<Paws::Ivschat::CreateLoggingConfigurationResponse> instance

Creates a logging configuration that allows clients to store and record
sent messages.


=head2 CreateRoom

=over

=item [LoggingConfigurationIdentifiers => ArrayRef[Str|Undef]]

=item [MaximumMessageLength => Int]

=item [MaximumMessageRatePerSecond => Int]

=item [MessageReviewHandler => L<Paws::Ivschat::MessageReviewHandler>]

=item [Name => Str]

=item [Tags => L<Paws::Ivschat::Tags>]


=back

Each argument is described in detail in: L<Paws::Ivschat::CreateRoom>

Returns: a L<Paws::Ivschat::CreateRoomResponse> instance

Creates a room that allows clients to connect and pass messages.


=head2 DeleteLoggingConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Ivschat::DeleteLoggingConfiguration>

Returns: nothing

Deletes the specified logging configuration.


=head2 DeleteMessage

=over

=item Id => Str

=item RoomIdentifier => Str

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::DeleteMessage>

Returns: a L<Paws::Ivschat::DeleteMessageResponse> instance

Sends an event to a specific room which directs clients to delete a
specific message; that is, unrender it from view and delete it from the
clientE<rsquo>s chat history. This eventE<rsquo>s C<EventName> is
C<aws:DELETE_MESSAGE>. This replicates the DeleteMessage
(https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
WebSocket operation in the Amazon IVS Chat Messaging API.


=head2 DeleteRoom

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Ivschat::DeleteRoom>

Returns: nothing

Deletes the specified room.


=head2 DisconnectUser

=over

=item RoomIdentifier => Str

=item UserId => Str

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::DisconnectUser>

Returns: a L<Paws::Ivschat::DisconnectUserResponse> instance

Disconnects all connections using a specified user ID from a room. This
replicates the DisconnectUser
(https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
WebSocket operation in the Amazon IVS Chat Messaging API.


=head2 GetLoggingConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Ivschat::GetLoggingConfiguration>

Returns: a L<Paws::Ivschat::GetLoggingConfigurationResponse> instance

Gets the specified logging configuration.


=head2 GetRoom

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Ivschat::GetRoom>

Returns: a L<Paws::Ivschat::GetRoomResponse> instance

Gets the specified room.


=head2 ListLoggingConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::ListLoggingConfigurations>

Returns: a L<Paws::Ivschat::ListLoggingConfigurationsResponse> instance

Gets summary information about all your logging configurations in the
AWS region where the API request is processed.


=head2 ListRooms

=over

=item [LoggingConfigurationIdentifier => Str]

=item [MaxResults => Int]

=item [MessageReviewHandlerUri => Str]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::ListRooms>

Returns: a L<Paws::Ivschat::ListRoomsResponse> instance

Gets summary information about all your rooms in the AWS region where
the API request is processed. Results are sorted in descending order of
C<updateTime>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Ivschat::ListTagsForResource>

Returns: a L<Paws::Ivschat::ListTagsForResourceResponse> instance

Gets information about AWS tags for the specified ARN.


=head2 SendEvent

=over

=item EventName => Str

=item RoomIdentifier => Str

=item [Attributes => L<Paws::Ivschat::EventAttributes>]


=back

Each argument is described in detail in: L<Paws::Ivschat::SendEvent>

Returns: a L<Paws::Ivschat::SendEventResponse> instance

Sends an event to a room. Use this within your applicationE<rsquo>s
business logic to send events to clients of a room; e.g., to notify
clients to change the way the chat UI is rendered.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Ivschat::Tags>


=back

Each argument is described in detail in: L<Paws::Ivschat::TagResource>

Returns: a L<Paws::Ivschat::TagResourceResponse> instance

Adds or updates tags for the AWS resource with the specified ARN.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Ivschat::UntagResource>

Returns: a L<Paws::Ivschat::UntagResourceResponse> instance

Removes tags from the resource with the specified ARN.


=head2 UpdateLoggingConfiguration

=over

=item Identifier => Str

=item [DestinationConfiguration => L<Paws::Ivschat::DestinationConfiguration>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::UpdateLoggingConfiguration>

Returns: a L<Paws::Ivschat::UpdateLoggingConfigurationResponse> instance

Updates a specified logging configuration.


=head2 UpdateRoom

=over

=item Identifier => Str

=item [LoggingConfigurationIdentifiers => ArrayRef[Str|Undef]]

=item [MaximumMessageLength => Int]

=item [MaximumMessageRatePerSecond => Int]

=item [MessageReviewHandler => L<Paws::Ivschat::MessageReviewHandler>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Ivschat::UpdateRoom>

Returns: a L<Paws::Ivschat::UpdateRoomResponse> instance

Updates a roomE<rsquo>s configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

