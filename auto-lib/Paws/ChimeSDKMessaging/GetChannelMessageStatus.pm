
package Paws::ChimeSDKMessaging::GetChannelMessageStatus;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);
  has SubChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sub-channel-id');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannelMessageStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/messages/{messageId}?scope=message-status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::GetChannelMessageStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetChannelMessageStatus - Arguments for method GetChannelMessageStatus on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannelMessageStatus on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method GetChannelMessageStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannelMessageStatus.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $GetChannelMessageStatusResponse =
      $messaging -chime->GetChannelMessageStatus(
      ChannelArn   => 'MyChimeArn',
      ChimeBearer  => 'MyChimeArn',
      MessageId    => 'MyMessageId',
      SubChannelId => 'MySubChannelId',    # OPTIONAL
      );

    # Results:
    my $Status = $GetChannelMessageStatusResponse->Status;

 # Returns a L<Paws::ChimeSDKMessaging::GetChannelMessageStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/GetChannelMessageStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel



=head2 B<REQUIRED> ChimeBearer => Str

The C<AppInstanceUserArn> of the user making the API call.



=head2 B<REQUIRED> MessageId => Str

The ID of the message.



=head2 SubChannelId => Str

The ID of the SubChannel in the request.

Only required when getting message status in a SubChannel that the user
belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannelMessageStatus in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

