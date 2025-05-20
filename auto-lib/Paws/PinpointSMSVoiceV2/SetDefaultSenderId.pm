
package Paws::PinpointSMSVoiceV2::SetDefaultSenderId;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has SenderId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDefaultSenderId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SetDefaultSenderIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultSenderId - Arguments for method SetDefaultSenderId on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDefaultSenderId on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SetDefaultSenderId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDefaultSenderId.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SetDefaultSenderIdResult = $sms -voice->SetDefaultSenderId(
      ConfigurationSetName => 'MyConfigurationSetNameOrArn',
      SenderId             => 'MySenderId',

    );

    # Results:
    my $ConfigurationSetArn  = $SetDefaultSenderIdResult->ConfigurationSetArn;
    my $ConfigurationSetName = $SetDefaultSenderIdResult->ConfigurationSetName;
    my $SenderId             = $SetDefaultSenderIdResult->SenderId;

    # Returns a L<Paws::PinpointSMSVoiceV2::SetDefaultSenderIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SetDefaultSenderId>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The configuration set to updated with a new default SenderId. This
field can be the ConsigurationSetName or ConfigurationSetArn.



=head2 B<REQUIRED> SenderId => Str

The current sender ID for the configuration set. When sending a text
message to a destination country which supports SenderIds, the default
sender ID on the configuration set specified on SendTextMessage will be
used if no dedicated origination phone numbers or registered SenderIds
are available in your account, instead of a generic sender ID, such as
'NOTICE'.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDefaultSenderId in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

