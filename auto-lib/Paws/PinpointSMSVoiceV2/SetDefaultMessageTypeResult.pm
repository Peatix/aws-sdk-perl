
package Paws::PinpointSMSVoiceV2::SetDefaultMessageTypeResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultMessageTypeResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The Amazon Resource Name (ARN) of the updated configuration set.


=head2 ConfigurationSetName => Str

The name of the configuration set that was updated.


=head2 MessageType => Str

The new default message type of the configuration set.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 _request_id => Str


=cut

1;