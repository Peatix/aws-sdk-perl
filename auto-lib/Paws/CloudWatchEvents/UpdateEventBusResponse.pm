
package Paws::CloudWatchEvents::UpdateEventBusResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateEventBusResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The event bus Amazon Resource Name (ARN).


=head2 DeadLetterConfig => L<Paws::CloudWatchEvents::DeadLetterConfig>




=head2 Description => Str

The event bus description.


=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use
to encrypt events on this event bus, if one has been specified.

For more information, see Data encryption in EventBridge
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html)
in the I<Amazon EventBridge User Guide>.


=head2 Name => Str

The event bus name.


=head2 _request_id => Str


=cut

1;