
package Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSetResult;
  use Moose;
  has CountryRuleSet => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet', required => 1);
  has NumberCapability => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSetResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CountryRuleSet => L<Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet>

An array of ProtectConfigurationCountryRuleSetInformation containing
the rules for the NumberCapability.


=head2 B<REQUIRED> NumberCapability => Str

The number capability that was updated

Valid values are: C<"SMS">, C<"VOICE">, C<"MMS">
=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 _request_id => Str


=cut

1;