
package Paws::PinpointSMSVoiceV2::UpdateEventDestinationResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has EventDestination => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::EventDestination');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdateEventDestinationResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The Amazon Resource Name (ARN) for the ConfigurationSet that was
updated.


=head2 ConfigurationSetName => Str

The name of the configuration set.


=head2 EventDestination => L<Paws::PinpointSMSVoiceV2::EventDestination>

An EventDestination object containing the details of where events will
be logged.


=head2 _request_id => Str


=cut

1;