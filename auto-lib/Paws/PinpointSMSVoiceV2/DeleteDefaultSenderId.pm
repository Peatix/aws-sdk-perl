
package Paws::PinpointSMSVoiceV2::DeleteDefaultSenderId;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDefaultSenderId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteDefaultSenderIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteDefaultSenderId - Arguments for method DeleteDefaultSenderId on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDefaultSenderId on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteDefaultSenderId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDefaultSenderId.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteDefaultSenderIdResult = $sms -voice->DeleteDefaultSenderId(
      ConfigurationSetName => 'MyConfigurationSetNameOrArn',

    );

    # Results:
    my $ConfigurationSetArn = $DeleteDefaultSenderIdResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $DeleteDefaultSenderIdResult->ConfigurationSetName;
    my $SenderId = $DeleteDefaultSenderIdResult->SenderId;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeleteDefaultSenderIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteDefaultSenderId>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set or the configuration set Amazon
Resource Name (ARN) to delete the default sender ID from. The
ConfigurationSetName and ConfigurationSetArn can be found using the
DescribeConfigurationSets action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDefaultSenderId in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

