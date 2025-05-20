
package Paws::ChimeSDKMessaging::ChannelFlowCallback;
  use Moose;
  has CallbackId => (is => 'ro', isa => 'Str', required => 1);
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChannelMessage => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMessageCallback', required => 1);
  has DeleteResource => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChannelFlowCallback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}?operation=channel-flow-callback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ChannelFlowCallbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ChannelFlowCallback - Arguments for method ChannelFlowCallback on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChannelFlowCallback on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ChannelFlowCallback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChannelFlowCallback.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ChannelFlowCallbackResponse = $messaging -chime->ChannelFlowCallback(
      CallbackId     => 'MyCallbackIdType',
      ChannelArn     => 'MyChimeArn',
      ChannelMessage => {
        MessageId         => 'MyMessageId',          # min: 1, max: 128
        Content           => 'MyNonEmptyContent',    # min: 1; OPTIONAL
        ContentType       => 'MyContentType',        # max: 45; OPTIONAL
        MessageAttributes => {
          'MyMessageAttributeName' => {
            StringValues => [
              'MyMessageAttributeStringValue', ...    # min: 1, max: 512
            ],    # OPTIONAL
          },    # key: min: 1, max: 64
        },    # OPTIONAL
        Metadata         => 'MyMetadata',    # max: 1024; OPTIONAL
        PushNotification => {
          Body  => 'MyPushNotificationBody',   # min: 1, max: 150; OPTIONAL
          Title => 'MyPushNotificationTitle',  # min: 1, max: 50; OPTIONAL
          Type  => 'DEFAULT',                  # values: DEFAULT, VOIP; OPTIONAL
        },    # OPTIONAL
        SubChannelId => 'MySubChannelId',    # min: 1, max: 128; OPTIONAL
      },
      DeleteResource => 1,                   # OPTIONAL
    );

    # Results:
    my $CallbackId = $ChannelFlowCallbackResponse->CallbackId;
    my $ChannelArn = $ChannelFlowCallbackResponse->ChannelArn;

    # Returns a L<Paws::ChimeSDKMessaging::ChannelFlowCallbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ChannelFlowCallback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallbackId => Str

The identifier passed to the processor by the service when invoked. Use
the identifier to call back the service.



=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChannelMessage => L<Paws::ChimeSDKMessaging::ChannelMessageCallback>

Stores information about the processed message.



=head2 DeleteResource => Bool

When a processor determines that a message needs to be C<DENIED>, pass
this parameter with a value of true.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChannelFlowCallback in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

