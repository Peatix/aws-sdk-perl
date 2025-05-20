
package Paws::PinpointSMSVoiceV2::SetDefaultMessageType;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDefaultMessageType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SetDefaultMessageTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultMessageType - Arguments for method SetDefaultMessageType on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDefaultMessageType on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SetDefaultMessageType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDefaultMessageType.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SetDefaultMessageTypeResult = $sms -voice->SetDefaultMessageType(
      ConfigurationSetName => 'MyConfigurationSetNameOrArn',
      MessageType          => 'TRANSACTIONAL',

    );

    # Results:
    my $ConfigurationSetArn = $SetDefaultMessageTypeResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $SetDefaultMessageTypeResult->ConfigurationSetName;
    my $MessageType = $SetDefaultMessageTypeResult->MessageType;

    # Returns a L<Paws::PinpointSMSVoiceV2::SetDefaultMessageTypeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SetDefaultMessageType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The configuration set to update with a new default message type. This
field can be the ConsigurationSetName or ConfigurationSetArn.



=head2 B<REQUIRED> MessageType => Str

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDefaultMessageType in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

