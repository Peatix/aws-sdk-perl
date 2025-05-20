
package Paws::PinpointSMSVoiceV2::AssociateProtectConfiguration;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateProtectConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::AssociateProtectConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::AssociateProtectConfiguration - Arguments for method AssociateProtectConfiguration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateProtectConfiguration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method AssociateProtectConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateProtectConfiguration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $AssociateProtectConfigurationResult =
      $sms -voice->AssociateProtectConfiguration(
      ConfigurationSetName   => 'MyConfigurationSetNameOrArn',
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',

      );

    # Results:
    my $ConfigurationSetArn =
      $AssociateProtectConfigurationResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $AssociateProtectConfigurationResult->ConfigurationSetName;
    my $ProtectConfigurationArn =
      $AssociateProtectConfigurationResult->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $AssociateProtectConfigurationResult->ProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::AssociateProtectConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/AssociateProtectConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the ConfigurationSet.



=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateProtectConfiguration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

