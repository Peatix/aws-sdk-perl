
package Paws::PinpointSMSVoiceV2::DeleteDefaultMessageType;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDefaultMessageType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteDefaultMessageTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteDefaultMessageType - Arguments for method DeleteDefaultMessageType on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDefaultMessageType on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteDefaultMessageType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDefaultMessageType.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteDefaultMessageTypeResult = $sms -voice->DeleteDefaultMessageType(
      ConfigurationSetName => 'MyConfigurationSetNameOrArn',

    );

    # Results:
    my $ConfigurationSetArn =
      $DeleteDefaultMessageTypeResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $DeleteDefaultMessageTypeResult->ConfigurationSetName;
    my $MessageType = $DeleteDefaultMessageTypeResult->MessageType;

 # Returns a L<Paws::PinpointSMSVoiceV2::DeleteDefaultMessageTypeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteDefaultMessageType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set or the configuration set Amazon
Resource Name (ARN) to delete the default message type from. The
ConfigurationSetName and ConfigurationSetArn can be found using the
DescribeConfigurationSets action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDefaultMessageType in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

