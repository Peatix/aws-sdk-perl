package Paws::ChimeSDKMessaging;
  use Moose;
  sub service { 'messaging-chime' }
  sub signing_name { 'chime' }
  sub version { '2021-05-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::AssociateChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::BatchCreateChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChannelFlowCallback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ChannelFlowCallback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::CreateChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::CreateChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::CreateChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::CreateChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessagingStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DeleteMessagingStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelMembershipForAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelMembershipForAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelModeratedByAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelModeratedByAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DescribeChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::DisassociateChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelMembershipPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::GetChannelMembershipPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::GetChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelMessageStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::GetChannelMessageStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMessagingSessionEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::GetMessagingSessionEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMessagingStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelBans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelBans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMembershipsForAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelModerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelModerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelsAssociatedWithChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelsModeratedByAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListChannelsModeratedByAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListSubChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutChannelExpirationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::PutChannelExpirationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutChannelMembershipPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::PutChannelMembershipPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMessagingStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::RedactChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::SearchChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::SendChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::UpdateChannelFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::UpdateChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelReadMarker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMessaging::UpdateChannelReadMarker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateChannelFlow BatchCreateChannelMembership ChannelFlowCallback CreateChannel CreateChannelBan CreateChannelFlow CreateChannelMembership CreateChannelModerator DeleteChannel DeleteChannelBan DeleteChannelFlow DeleteChannelMembership DeleteChannelMessage DeleteChannelModerator DeleteMessagingStreamingConfigurations DescribeChannel DescribeChannelBan DescribeChannelFlow DescribeChannelMembership DescribeChannelMembershipForAppInstanceUser DescribeChannelModeratedByAppInstanceUser DescribeChannelModerator DisassociateChannelFlow GetChannelMembershipPreferences GetChannelMessage GetChannelMessageStatus GetMessagingSessionEndpoint GetMessagingStreamingConfigurations ListChannelBans ListChannelFlows ListChannelMemberships ListChannelMembershipsForAppInstanceUser ListChannelMessages ListChannelModerators ListChannels ListChannelsAssociatedWithChannelFlow ListChannelsModeratedByAppInstanceUser ListSubChannels ListTagsForResource PutChannelExpirationSettings PutChannelMembershipPreferences PutMessagingStreamingConfigurations RedactChannelMessage SearchChannels SendChannelMessage TagResource UntagResource UpdateChannel UpdateChannelFlow UpdateChannelMessage UpdateChannelReadMarker / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging - Perl Interface to AWS Amazon Chime SDK Messaging

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ChimeSDKMessaging');
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

The Amazon Chime SDK messaging APIs in this section allow software
developers to send and receive messages in custom messaging
applications. These APIs depend on the frameworks provided by the
Amazon Chime SDK identity APIs. For more information about the
messaging APIs, see Amazon Chime SDK messaging
(https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateChannelFlow

=over

=item ChannelArn => Str

=item ChannelFlowArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::AssociateChannelFlow>

Returns: nothing

Associates a channel flow with a channel. Once associated, all messages
to that channel go through channel flow processors. To stop processing,
use the C<DisassociateChannelFlow> API.

Only administrators or channel moderators can associate a channel flow.
The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 BatchCreateChannelMembership

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArns => ArrayRef[Str|Undef]

=item [SubChannelId => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::BatchCreateChannelMembership>

Returns: a L<Paws::ChimeSDKMessaging::BatchCreateChannelMembershipResponse> instance

Adds a specified number of users and bots to a channel.


=head2 ChannelFlowCallback

=over

=item CallbackId => Str

=item ChannelArn => Str

=item ChannelMessage => L<Paws::ChimeSDKMessaging::ChannelMessageCallback>

=item [DeleteResource => Bool]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ChannelFlowCallback>

Returns: a L<Paws::ChimeSDKMessaging::ChannelFlowCallbackResponse> instance

Calls back Amazon Chime SDK messaging with a processing response
message. This should be invoked from the processor Lambda. This is a
developer API.

You can return one of the following processing responses:

=over

=item *

Update message content or metadata

=item *

Deny a message

=item *

Make no changes to the message

=back



=head2 CreateChannel

=over

=item AppInstanceArn => Str

=item ChimeBearer => Str

=item ClientRequestToken => Str

=item Name => Str

=item [ChannelId => Str]

=item [ElasticChannelConfiguration => L<Paws::ChimeSDKMessaging::ElasticChannelConfiguration>]

=item [ExpirationSettings => L<Paws::ChimeSDKMessaging::ExpirationSettings>]

=item [MemberArns => ArrayRef[Str|Undef]]

=item [Metadata => Str]

=item [Mode => Str]

=item [ModeratorArns => ArrayRef[Str|Undef]]

=item [Privacy => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMessaging::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::CreateChannel>

Returns: a L<Paws::ChimeSDKMessaging::CreateChannelResponse> instance

Creates a channel to which you can add users and send messages.

B<Restriction>: You can't change a channel's privacy.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 CreateChannelBan

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::CreateChannelBan>

Returns: a L<Paws::ChimeSDKMessaging::CreateChannelBanResponse> instance

Permanently bans a member from a channel. Moderators can't add banned
members to a channel. To undo a ban, you first have to
C<DeleteChannelBan>, and then C<CreateChannelMembership>. Bans are
cleaned up when you delete users or channels.

If you ban a user who is already part of a channel, that user is
automatically kicked from the channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 CreateChannelFlow

=over

=item AppInstanceArn => Str

=item ClientRequestToken => Str

=item Name => Str

=item Processors => ArrayRef[L<Paws::ChimeSDKMessaging::Processor>]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMessaging::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::CreateChannelFlow>

Returns: a L<Paws::ChimeSDKMessaging::CreateChannelFlowResponse> instance

Creates a channel flow, a container for processors. Processors are AWS
Lambda functions that perform actions on chat messages, such as
stripping out profanity. You can associate channel flows with channels,
and the processors in the channel flow then take action on all messages
sent to that channel. This is a developer API.

Channel flows process the following items:

=over

=item 1.

New and updated messages

=item 2.

Persistent and non-persistent messages

=item 3.

The Standard message type

=back

Channel flows don't process Control or System messages. For more
information about the message types provided by Chime SDK messaging,
refer to Message types
(https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types)
in the I<Amazon Chime developer guide>.


=head2 CreateChannelMembership

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str

=item Type => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::CreateChannelMembership>

Returns: a L<Paws::ChimeSDKMessaging::CreateChannelMembershipResponse> instance

Adds a member to a channel. The C<InvitedBy> field in
C<ChannelMembership> is derived from the request header. A channel
member can:

=over

=item *

List messages

=item *

Send messages

=item *

Receive messages

=item *

Edit their own messages

=item *

Leave the channel

=back

Privacy settings impact this action as follows:

=over

=item *

Public Channels: You do not need to be a member to list messages, but
you must be a member to send messages.

=item *

Private Channels: You must be a member to list or send messages.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUserArn> or C<AppInstanceBot> that makes the API call
as the value in the header.


=head2 CreateChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::CreateChannelModerator>

Returns: a L<Paws::ChimeSDKMessaging::CreateChannelModeratorResponse> instance

Creates a new C<ChannelModerator>. A channel moderator can:

=over

=item *

Add and remove other members of the channel.

=item *

Add and remove other moderators of the channel.

=item *

Add and remove user bans for the channel.

=item *

Redact messages in the channel.

=item *

List messages in the channel.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot>of the user that makes the
API call as the value in the header.


=head2 DeleteChannel

=over

=item ChannelArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannel>

Returns: nothing

Immediately makes a channel and its memberships inaccessible and marks
them for deletion. This is an irreversible process.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUserArn> or C<AppInstanceBot> that makes the API call
as the value in the header.


=head2 DeleteChannelBan

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannelBan>

Returns: nothing

Removes a member from a channel's ban list.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DeleteChannelFlow

=over

=item ChannelFlowArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannelFlow>

Returns: nothing

Deletes a channel flow, an irreversible process. This is a developer
API.

This API works only when the channel flow is not associated with any
channel. To get a list of all channels that a channel flow is
associated with, use the C<ListChannelsAssociatedWithChannelFlow> API.
Use the C<DisassociateChannelFlow> API to disassociate a channel flow
from all channels.


=head2 DeleteChannelMembership

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannelMembership>

Returns: nothing

Removes a member from a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteChannelMessage

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MessageId => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannelMessage>

Returns: nothing

Deletes a channel message. Only admins can perform this action.
Deletion makes messages inaccessible immediately. A background process
deletes any revisions created by C<UpdateChannelMessage>.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DeleteChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteChannelModerator>

Returns: nothing

Deletes a channel moderator.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DeleteMessagingStreamingConfigurations

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DeleteMessagingStreamingConfigurations>

Returns: nothing

Deletes the streaming configurations for an C<AppInstance>. For more
information, see Streaming messaging data
(https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
in the I<Amazon Chime SDK Developer Guide>.


=head2 DescribeChannel

=over

=item ChannelArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannel>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelResponse> instance

Returns the full details of a channel in an Amazon Chime
C<AppInstance>.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DescribeChannelBan

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelBan>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelBanResponse> instance

Returns the full details of a channel ban.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DescribeChannelFlow

=over

=item ChannelFlowArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelFlow>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelFlowResponse> instance

Returns the full details of a channel flow in an Amazon Chime
C<AppInstance>. This is a developer API.


=head2 DescribeChannelMembership

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelMembership>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelMembershipResponse> instance

Returns the full details of a user's channel membership.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DescribeChannelMembershipForAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item ChannelArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelMembershipForAppInstanceUser>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelMembershipForAppInstanceUserResponse> instance

Returns the details of a channel based on the membership of the
specified C<AppInstanceUser> or C<AppInstanceBot>.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DescribeChannelModeratedByAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item ChannelArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelModeratedByAppInstanceUser>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelModeratedByAppInstanceUserResponse> instance

Returns the full details of a channel moderated by the specified
C<AppInstanceUser> or C<AppInstanceBot>.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 DescribeChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DescribeChannelModerator>

Returns: a L<Paws::ChimeSDKMessaging::DescribeChannelModeratorResponse> instance

Returns the full details of a single ChannelModerator.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DisassociateChannelFlow

=over

=item ChannelArn => Str

=item ChannelFlowArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::DisassociateChannelFlow>

Returns: nothing

Disassociates a channel flow from all its channels. Once disassociated,
all messages to that channel stop going through the channel flow
processor.

Only administrators or channel moderators can disassociate a channel
flow.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 GetChannelMembershipPreferences

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::GetChannelMembershipPreferences>

Returns: a L<Paws::ChimeSDKMessaging::GetChannelMembershipPreferencesResponse> instance

Gets the membership preferences of an C<AppInstanceUser> or
C<AppInstanceBot> for the specified channel. A user or a bot must be a
member of the channel and own the membership in order to retrieve
membership preferences. Users or bots in the C<AppInstanceAdmin> and
channel moderator roles can't retrieve preferences for other users or
bots. Banned users or bots can't retrieve membership preferences for
the channel from which they are banned.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 GetChannelMessage

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MessageId => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::GetChannelMessage>

Returns: a L<Paws::ChimeSDKMessaging::GetChannelMessageResponse> instance

Gets the full details of a channel message.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 GetChannelMessageStatus

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MessageId => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::GetChannelMessageStatus>

Returns: a L<Paws::ChimeSDKMessaging::GetChannelMessageStatusResponse> instance

Gets message status for a specified C<messageId>. Use this API to
determine the intermediate status of messages going through channel
flow processing. The API provides an alternative to retrieving message
status if the event was not received because a client wasn't connected
to a websocket.

Messages can have any one of these statuses.

=over

=item SENT

Message processed successfully

=item PENDING

Ongoing processing

=item FAILED

Processing failed

=item DENIED

Message denied by the processor

=back

=over

=item *

This API does not return statuses for denied messages, because we don't
store them once the processor denies them.

=item *

Only the message sender can invoke this API.

=item *

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.

=back



=head2 GetMessagingSessionEndpoint






Each argument is described in detail in: L<Paws::ChimeSDKMessaging::GetMessagingSessionEndpoint>

Returns: a L<Paws::ChimeSDKMessaging::GetMessagingSessionEndpointResponse> instance

The details of the endpoint for the messaging session.


=head2 GetMessagingStreamingConfigurations

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurations>

Returns: a L<Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurationsResponse> instance

Retrieves the data streaming configuration for an C<AppInstance>. For
more information, see Streaming messaging data
(https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
in the I<Amazon Chime SDK Developer Guide>.


=head2 ListChannelBans

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelBans>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelBansResponse> instance

Lists all the users and bots banned from a particular channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 ListChannelFlows

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelFlows>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelFlowsResponse> instance

Returns a paginated lists of all the channel flows created under a
single Chime. This is a developer API.


=head2 ListChannelMemberships

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubChannelId => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelMemberships>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelMembershipsResponse> instance

Lists all channel memberships in a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.

If you want to list the channels to which a specific app instance user
belongs, see the ListChannelMembershipsForAppInstanceUser
(https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html)
API.


=head2 ListChannelMembershipsForAppInstanceUser

=over

=item ChimeBearer => Str

=item [AppInstanceUserArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUser>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUserResponse> instance

Lists all channels that an C<AppInstanceUser> or C<AppInstanceBot> is a
part of. Only an C<AppInstanceAdmin> can call the API with a user ARN
that is not their own.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 ListChannelMessages

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NotAfter => Str]

=item [NotBefore => Str]

=item [SortOrder => Str]

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelMessages>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelMessagesResponse> instance

List all the messages in a channel. Returns a paginated list of
C<ChannelMessages>. By default, sorted by creation timestamp in
descending order.

Redacted messages appear in the results as empty, since they are only
redacted, not deleted. Deleted messages do not appear in the results.
This action always returns the latest version of an edited message.

Also, the C<x-amz-chime-bearer> request header is mandatory. Use the
ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the API
call as the value in the header.


=head2 ListChannelModerators

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelModerators>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelModeratorsResponse> instance

Lists all the moderators for a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 ListChannels

=over

=item AppInstanceArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Privacy => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannels>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelsResponse> instance

Lists all Channels created under a single Chime App as a paginated
list. You can specify filters to narrow results.

B<Functionality & restrictions>

=over

=item *

Use privacy = C<PUBLIC> to retrieve all public channels in the account.

=item *

Only an C<AppInstanceAdmin> can set privacy = C<PRIVATE> to list the
private channels in an account.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 ListChannelsAssociatedWithChannelFlow

=over

=item ChannelFlowArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlow>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlowResponse> instance

Lists all channels associated with a specified channel flow. You can
associate a channel flow with multiple channels, but you can only
associate a channel with one channel flow. This is a developer API.


=head2 ListChannelsModeratedByAppInstanceUser

=over

=item ChimeBearer => Str

=item [AppInstanceUserArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListChannelsModeratedByAppInstanceUser>

Returns: a L<Paws::ChimeSDKMessaging::ListChannelsModeratedByAppInstanceUserResponse> instance

A list of the channels moderated by an C<AppInstanceUser>.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 ListSubChannels

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListSubChannels>

Returns: a L<Paws::ChimeSDKMessaging::ListSubChannelsResponse> instance

Lists all the SubChannels in an elastic channel when given a channel
ID. Available only to the app instance admins and channel moderators of
elastic channels.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::ListTagsForResource>

Returns: a L<Paws::ChimeSDKMessaging::ListTagsForResourceResponse> instance

Lists the tags applied to an Amazon Chime SDK messaging resource.


=head2 PutChannelExpirationSettings

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]

=item [ExpirationSettings => L<Paws::ChimeSDKMessaging::ExpirationSettings>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::PutChannelExpirationSettings>

Returns: a L<Paws::ChimeSDKMessaging::PutChannelExpirationSettingsResponse> instance

Sets the number of days before the channel is automatically deleted.

=over

=item *

A background process deletes expired channels within 6 hours of
expiration. Actual deletion times may vary.

=item *

Expired channels that have not yet been deleted appear as active, and
you can update their expiration settings. The system honors the new
settings.

=item *

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.

=back



=head2 PutChannelMembershipPreferences

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MemberArn => Str

=item Preferences => L<Paws::ChimeSDKMessaging::ChannelMembershipPreferences>


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::PutChannelMembershipPreferences>

Returns: a L<Paws::ChimeSDKMessaging::PutChannelMembershipPreferencesResponse> instance

Sets the membership preferences of an C<AppInstanceUser> or
C<AppInstanceBot> for the specified channel. The user or bot must be a
member of the channel. Only the user or bot who owns the membership can
set preferences. Users or bots in the C<AppInstanceAdmin> and channel
moderator roles can't set preferences for other users. Banned users or
bots can't set membership preferences for the channel from which they
are banned.

The x-amz-chime-bearer request header is mandatory. Use the ARN of an
C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as the
value in the header.


=head2 PutMessagingStreamingConfigurations

=over

=item AppInstanceArn => Str

=item StreamingConfigurations => ArrayRef[L<Paws::ChimeSDKMessaging::StreamingConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurations>

Returns: a L<Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurationsResponse> instance

Sets the data streaming configuration for an C<AppInstance>. For more
information, see Streaming messaging data
(https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
in the I<Amazon Chime SDK Developer Guide>.


=head2 RedactChannelMessage

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item MessageId => Str

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::RedactChannelMessage>

Returns: a L<Paws::ChimeSDKMessaging::RedactChannelMessageResponse> instance

Redacts message content, but not metadata. The message exists in the
back end, but the action returns null content, and the state shows as
redacted.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 SearchChannels

=over

=item Fields => ArrayRef[L<Paws::ChimeSDKMessaging::SearchField>]

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::SearchChannels>

Returns: a L<Paws::ChimeSDKMessaging::SearchChannelsResponse> instance

Allows the C<ChimeBearer> to search channels by channel members. Users
or bots can search across the channels that they belong to. Users in
the C<AppInstanceAdmin> role can search across all channels.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 SendChannelMessage

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item ClientRequestToken => Str

=item Content => Str

=item Persistence => Str

=item Type => Str

=item [ContentType => Str]

=item [MessageAttributes => L<Paws::ChimeSDKMessaging::MessageAttributeMap>]

=item [Metadata => Str]

=item [PushNotification => L<Paws::ChimeSDKMessaging::PushNotificationConfiguration>]

=item [SubChannelId => Str]

=item [Target => ArrayRef[L<Paws::ChimeSDKMessaging::Target>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::SendChannelMessage>

Returns: a L<Paws::ChimeSDKMessaging::SendChannelMessageResponse> instance

Sends a message to a particular channel that the member is a part of.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.

Also, C<STANDARD> messages can be up to 4KB in size and contain
metadata. Metadata is arbitrary, and you can use it in a variety of
ways, such as containing a link to an attachment.

C<CONTROL> messages are limited to 30 bytes and do not contain
metadata.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ChimeSDKMessaging::Tag>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::TagResource>

Returns: nothing

Applies the specified tags to the specified Amazon Chime SDK messaging
resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::UntagResource>

Returns: nothing

Removes the specified tags from the specified Amazon Chime SDK
messaging resource.


=head2 UpdateChannel

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item [Metadata => Str]

=item [Mode => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::UpdateChannel>

Returns: a L<Paws::ChimeSDKMessaging::UpdateChannelResponse> instance

Update a channel's attributes.

B<Restriction>: You can't change a channel's privacy.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 UpdateChannelFlow

=over

=item ChannelFlowArn => Str

=item Name => Str

=item Processors => ArrayRef[L<Paws::ChimeSDKMessaging::Processor>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::UpdateChannelFlow>

Returns: a L<Paws::ChimeSDKMessaging::UpdateChannelFlowResponse> instance

Updates channel flow attributes. This is a developer API.


=head2 UpdateChannelMessage

=over

=item ChannelArn => Str

=item ChimeBearer => Str

=item Content => Str

=item MessageId => Str

=item [ContentType => Str]

=item [Metadata => Str]

=item [SubChannelId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::UpdateChannelMessage>

Returns: a L<Paws::ChimeSDKMessaging::UpdateChannelMessageResponse> instance

Updates the content of a message.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.


=head2 UpdateChannelReadMarker

=over

=item ChannelArn => Str

=item ChimeBearer => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMessaging::UpdateChannelReadMarker>

Returns: a L<Paws::ChimeSDKMessaging::UpdateChannelReadMarkerResponse> instance

The details of the time when a user last read messages in a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the ARN of
the C<AppInstanceUser> or C<AppInstanceBot> that makes the API call as
the value in the header.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

