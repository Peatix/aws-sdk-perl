
package Paws::ChimeSDKMessaging::SendChannelMessage;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str');
  has MessageAttributes => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::MessageAttributeMap');
  has Metadata => (is => 'ro', isa => 'Str');
  has Persistence => (is => 'ro', isa => 'Str', required => 1);
  has PushNotification => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::PushNotificationConfiguration');
  has SubChannelId => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::Target]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendChannelMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::SendChannelMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::SendChannelMessage - Arguments for method SendChannelMessage on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendChannelMessage on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method SendChannelMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendChannelMessage.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $SendChannelMessageResponse = $messaging -chime->SendChannelMessage(
      ChannelArn         => 'MyChimeArn',
      ChimeBearer        => 'MyChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      Content            => 'MyNonEmptyContent',
      Persistence        => 'PERSISTENT',
      Type               => 'STANDARD',
      ContentType        => 'MyContentType',          # OPTIONAL
      MessageAttributes  => {
        'MyMessageAttributeName' => {
          StringValues => [
            'MyMessageAttributeStringValue', ...    # min: 1, max: 512
          ],    # OPTIONAL
        },    # key: min: 1, max: 64
      },    # OPTIONAL
      Metadata         => 'MyMetadata',    # OPTIONAL
      PushNotification => {
        Body  => 'MyPushNotificationBody',     # min: 1, max: 150; OPTIONAL
        Title => 'MyPushNotificationTitle',    # min: 1, max: 50; OPTIONAL
        Type  => 'DEFAULT',                    # values: DEFAULT, VOIP; OPTIONAL
      },    # OPTIONAL
      SubChannelId => 'MySubChannelId',    # OPTIONAL
      Target       => [
        {
          MemberArn => 'MyChimeArn',       # min: 5, max: 1600
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ChannelArn   = $SendChannelMessageResponse->ChannelArn;
    my $MessageId    = $SendChannelMessageResponse->MessageId;
    my $Status       = $SendChannelMessageResponse->Status;
    my $SubChannelId = $SendChannelMessageResponse->SubChannelId;

    # Returns a L<Paws::ChimeSDKMessaging::SendChannelMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/SendChannelMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 B<REQUIRED> ClientRequestToken => Str

The C<Idempotency> token for each client request.



=head2 B<REQUIRED> Content => Str

The content of the channel message.



=head2 ContentType => Str

The content type of the channel message.



=head2 MessageAttributes => L<Paws::ChimeSDKMessaging::MessageAttributeMap>

The attributes for the message, used for message filtering along with a
C<FilterRule> defined in the C<PushNotificationPreferences>.



=head2 Metadata => Str

The optional metadata for each message.



=head2 B<REQUIRED> Persistence => Str

Boolean that controls whether the message is persisted on the back end.
Required.

Valid values are: C<"PERSISTENT">, C<"NON_PERSISTENT">

=head2 PushNotification => L<Paws::ChimeSDKMessaging::PushNotificationConfiguration>

The push notification configuration of the message.



=head2 SubChannelId => Str

The ID of the SubChannel in the request.



=head2 Target => ArrayRef[L<Paws::ChimeSDKMessaging::Target>]

The target of a message. Must be a member of the channel, such as
another user, a bot, or the sender. Only the target and the sender can
view targeted messages. Only users who can see targeted messages can
take actions on them. However, administrators can delete targeted
messages that they canE<rsquo>t see.



=head2 B<REQUIRED> Type => Str

The type of message, C<STANDARD> or C<CONTROL>.

C<STANDARD> messages can be up to 4KB in size and contain metadata.
Metadata is arbitrary, and you can use it in a variety of ways, such as
containing a link to an attachment.

C<CONTROL> messages are limited to 30 bytes and do not contain
metadata.

Valid values are: C<"STANDARD">, C<"CONTROL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendChannelMessage in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

