
package Paws::ChimeSDKMessaging::PutChannelExpirationSettings;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has ExpirationSettings => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ExpirationSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutChannelExpirationSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/expiration-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::PutChannelExpirationSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PutChannelExpirationSettings - Arguments for method PutChannelExpirationSettings on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutChannelExpirationSettings on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method PutChannelExpirationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutChannelExpirationSettings.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $PutChannelExpirationSettingsResponse =
      $messaging -chime->PutChannelExpirationSettings(
      ChannelArn         => 'MyChimeArn',
      ChimeBearer        => 'MyChimeArn',    # OPTIONAL
      ExpirationSettings => {
        ExpirationCriterion => 'CREATED_TIMESTAMP'
        ,                    # values: CREATED_TIMESTAMP, LAST_MESSAGE_TIMESTAMP
        ExpirationDays => 1, # min: 1, max: 5475

      },    # OPTIONAL
      );

    # Results:
    my $ChannelArn = $PutChannelExpirationSettingsResponse->ChannelArn;
    my $ExpirationSettings =
      $PutChannelExpirationSettingsResponse->ExpirationSettings;

# Returns a L<Paws::ChimeSDKMessaging::PutChannelExpirationSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/PutChannelExpirationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 ExpirationSettings => L<Paws::ChimeSDKMessaging::ExpirationSettings>

Settings that control the interval after which a channel is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutChannelExpirationSettings in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

