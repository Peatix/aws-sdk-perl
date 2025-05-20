
package Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetNumberOverrides => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverride]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 RuleSetNumberOverrides => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverride>]

An array of RuleSetNumberOverrides objects.


=head2 _request_id => Str


=cut

1;