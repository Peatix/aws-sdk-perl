
package Paws::PinpointSMSVoiceV2::DeleteMediaMessageSpendLimitOverrideResult;
  use Moose;
  has MonthlyLimit => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteMediaMessageSpendLimitOverrideResult

=head1 ATTRIBUTES


=head2 MonthlyLimit => Int

The current monthly limit, in US dollars.


=head2 _request_id => Str


=cut

1;