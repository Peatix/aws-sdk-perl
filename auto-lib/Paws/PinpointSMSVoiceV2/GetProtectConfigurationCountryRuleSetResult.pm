
package Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSetResult;
  use Moose;
  has CountryRuleSet => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet', required => 1);
  has NumberCapability => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSetResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CountryRuleSet => L<Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet>

A map of ProtectConfigurationCountryRuleSetInformation objects that
contain the details for the requested NumberCapability. The Key is the
two-letter ISO country code. For a list of supported ISO country codes,
see Supported countries and regions (SMS channel)
(https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html)
in the AWS End User Messaging SMS User Guide.


=head2 B<REQUIRED> NumberCapability => Str

The capability type associated with the returned
ProtectConfigurationCountryRuleSetInformation objects.

Valid values are: C<"SMS">, C<"VOICE">, C<"MMS">
=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 _request_id => Str


=cut

1;