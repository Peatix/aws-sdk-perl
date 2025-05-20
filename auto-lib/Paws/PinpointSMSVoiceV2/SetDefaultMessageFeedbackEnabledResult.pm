
package Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabledResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has MessageFeedbackEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabledResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The arn of the configuration set.


=head2 ConfigurationSetName => Str

The name of the configuration.


=head2 MessageFeedbackEnabled => Bool

True if message feedback is enabled.


=head2 _request_id => Str


=cut

1;