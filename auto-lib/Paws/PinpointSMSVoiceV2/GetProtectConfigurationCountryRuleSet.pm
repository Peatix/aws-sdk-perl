
package Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSet;
  use Moose;
  has NumberCapability => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProtectConfigurationCountryRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSet - Arguments for method GetProtectConfigurationCountryRuleSet on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProtectConfigurationCountryRuleSet on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method GetProtectConfigurationCountryRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProtectConfigurationCountryRuleSet.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $GetProtectConfigurationCountryRuleSetResult =
      $sms -voice->GetProtectConfigurationCountryRuleSet(
      NumberCapability       => 'SMS',
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',

      );

    # Results:
    my $CountryRuleSet =
      $GetProtectConfigurationCountryRuleSetResult->CountryRuleSet;
    my $NumberCapability =
      $GetProtectConfigurationCountryRuleSetResult->NumberCapability;
    my $ProtectConfigurationArn =
      $GetProtectConfigurationCountryRuleSetResult->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $GetProtectConfigurationCountryRuleSetResult->ProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/GetProtectConfigurationCountryRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NumberCapability => Str

The capability type to return the CountryRuleSet for. Valid values are
C<SMS>, C<VOICE>, or C<MMS>.

Valid values are: C<"SMS">, C<"VOICE">, C<"MMS">

=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProtectConfigurationCountryRuleSet in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

