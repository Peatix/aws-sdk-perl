
package Paws::CloudWatchEvents::DescribeEventBusResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEventBusResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the account permitted to write events
to the current account.


=head2 CreationTime => Str

The time the event bus was created.


=head2 DeadLetterConfig => L<Paws::CloudWatchEvents::DeadLetterConfig>




=head2 Description => Str

The event bus description.


=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use
to encrypt events on this event bus, if one has been specified.

For more information, see Data encryption in EventBridge
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html)
in the I<Amazon EventBridge User Guide>.


=head2 LastModifiedTime => Str

The time the event bus was last modified.


=head2 Name => Str

The name of the event bus. Currently, this is always C<default>.


=head2 Policy => Str

The policy that enables the external account to send events to your
account.


=head2 _request_id => Str


=cut

1;