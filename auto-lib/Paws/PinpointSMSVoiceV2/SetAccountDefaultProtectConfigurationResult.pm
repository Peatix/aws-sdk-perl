
package Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfigurationResult;
  use Moose;
  has DefaultProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has DefaultProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfigurationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the account default protect
configuration.


=head2 B<REQUIRED> DefaultProtectConfigurationId => Str

The unique identifier of the account default protect configuration.


=head2 _request_id => Str


=cut

1;