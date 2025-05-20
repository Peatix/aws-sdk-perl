
package Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabled;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has MessageFeedbackEnabled => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDefaultMessageFeedbackEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabledResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabled - Arguments for method SetDefaultMessageFeedbackEnabled on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDefaultMessageFeedbackEnabled on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SetDefaultMessageFeedbackEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDefaultMessageFeedbackEnabled.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SetDefaultMessageFeedbackEnabledResult =
      $sms -voice->SetDefaultMessageFeedbackEnabled(
      ConfigurationSetName   => 'MyConfigurationSetNameOrArn',
      MessageFeedbackEnabled => 1,

      );

    # Results:
    my $ConfigurationSetArn =
      $SetDefaultMessageFeedbackEnabledResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $SetDefaultMessageFeedbackEnabledResult->ConfigurationSetName;
    my $MessageFeedbackEnabled =
      $SetDefaultMessageFeedbackEnabledResult->MessageFeedbackEnabled;

# Returns a L<Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabledResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SetDefaultMessageFeedbackEnabled>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.



=head2 B<REQUIRED> MessageFeedbackEnabled => Bool

Set to true to enable message feedback.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDefaultMessageFeedbackEnabled in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

