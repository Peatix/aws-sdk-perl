
package Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSet;
  use Moose;
  has CountryRuleSetUpdates => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet', required => 1);
  has NumberCapability => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProtectConfigurationCountryRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSet - Arguments for method UpdateProtectConfigurationCountryRuleSet on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProtectConfigurationCountryRuleSet on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method UpdateProtectConfigurationCountryRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProtectConfigurationCountryRuleSet.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $UpdateProtectConfigurationCountryRuleSetResult =
      $sms -voice->UpdateProtectConfigurationCountryRuleSet(
      CountryRuleSetUpdates => {
        'MyIsoCountryCode' => {
          ProtectStatus => 'ALLOW',    # values: ALLOW, BLOCK, MONITOR, FILTER

        },    # key: min: 2, max: 2
      },
      NumberCapability       => 'SMS',
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',

      );

    # Results:
    my $CountryRuleSet =
      $UpdateProtectConfigurationCountryRuleSetResult->CountryRuleSet;
    my $NumberCapability =
      $UpdateProtectConfigurationCountryRuleSetResult->NumberCapability;
    my $ProtectConfigurationArn =
      $UpdateProtectConfigurationCountryRuleSetResult->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $UpdateProtectConfigurationCountryRuleSetResult->ProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/UpdateProtectConfigurationCountryRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CountryRuleSetUpdates => L<Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet>

A map of ProtectConfigurationCountryRuleSetInformation objects that
contain the details for the requested NumberCapability. The Key is the
two-letter ISO country code. For a list of supported ISO country codes,
see Supported countries and regions (SMS channel)
(https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html)
in the AWS End User Messaging SMS User Guide.

For example, to set the United States as allowed and Canada as blocked,
the C<CountryRuleSetUpdates> would be formatted as:
C<"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA" :
{ "ProtectStatus": "BLOCK" } }>



=head2 B<REQUIRED> NumberCapability => Str

The number capability to apply the CountryRuleSetUpdates updates to.

Valid values are: C<"SMS">, C<"VOICE">, C<"MMS">

=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProtectConfigurationCountryRuleSet in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

