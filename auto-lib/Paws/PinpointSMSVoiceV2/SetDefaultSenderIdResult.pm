
package Paws::PinpointSMSVoiceV2::SetDefaultSenderIdResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultSenderIdResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The Amazon Resource Name (ARN) of the updated configuration set.


=head2 ConfigurationSetName => Str

The name of the configuration set that was updated.


=head2 SenderId => Str

The default sender ID to set for the ConfigurationSet.


=head2 _request_id => Str


=cut

1;