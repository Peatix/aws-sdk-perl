
package Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationRuleSetNumberOverrideResult;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationTimestamp => (is => 'ro', isa => 'Str');
  has IsoCountryCode => (is => 'ro', isa => 'Str');
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationRuleSetNumberOverrideResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action associated with the rule.

Valid values are: C<"ALLOW">, C<"BLOCK">
=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the rule was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DestinationPhoneNumber => Str

The destination phone number in E.164 format.


=head2 ExpirationTimestamp => Str

The time when the resource-based policy was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 _request_id => Str


=cut

1;