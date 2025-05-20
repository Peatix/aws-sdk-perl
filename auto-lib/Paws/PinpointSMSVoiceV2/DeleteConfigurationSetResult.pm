
package Paws::PinpointSMSVoiceV2::DeleteConfigurationSetResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DefaultMessageFeedbackEnabled => (is => 'ro', isa => 'Bool');
  has DefaultMessageType => (is => 'ro', isa => 'Str');
  has DefaultSenderId => (is => 'ro', isa => 'Str');
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::EventDestination]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteConfigurationSetResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The Amazon Resource Name (ARN) of the deleted configuration set.


=head2 ConfigurationSetName => Str

The name of the deleted configuration set.


=head2 CreatedTimestamp => Str

The time that the deleted configuration set was created in UNIX epoch
time (https://www.epochconverter.com/) format.


=head2 DefaultMessageFeedbackEnabled => Bool

True if the configuration set has message feedback enabled. By default
this is set to false.


=head2 DefaultMessageType => Str

The default message type of the configuration set that was deleted.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 DefaultSenderId => Str

The default Sender ID of the configuration set that was deleted.


=head2 EventDestinations => ArrayRef[L<Paws::PinpointSMSVoiceV2::EventDestination>]

An array of any EventDestination objects that were associated with the
deleted configuration set.


=head2 _request_id => Str


=cut

1;