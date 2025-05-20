
package Paws::PinpointSMSVoiceV2::SetVoiceMessageSpendLimitOverrideResult;
  use Moose;
  has MonthlyLimit => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetVoiceMessageSpendLimitOverrideResult

=head1 ATTRIBUTES


=head2 MonthlyLimit => Int

The current monthly limit to enforce on sending voice messages.


=head2 _request_id => Str


=cut

1;