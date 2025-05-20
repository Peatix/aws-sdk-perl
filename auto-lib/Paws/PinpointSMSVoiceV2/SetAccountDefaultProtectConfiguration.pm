
package Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfiguration;
  use Moose;
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetAccountDefaultProtectConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfiguration - Arguments for method SetAccountDefaultProtectConfiguration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetAccountDefaultProtectConfiguration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SetAccountDefaultProtectConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetAccountDefaultProtectConfiguration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SetAccountDefaultProtectConfigurationResult =
      $sms -voice->SetAccountDefaultProtectConfiguration(
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',

      );

    # Results:
    my $DefaultProtectConfigurationArn =
      $SetAccountDefaultProtectConfigurationResult
      ->DefaultProtectConfigurationArn;
    my $DefaultProtectConfigurationId =
      $SetAccountDefaultProtectConfigurationResult
      ->DefaultProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SetAccountDefaultProtectConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetAccountDefaultProtectConfiguration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

