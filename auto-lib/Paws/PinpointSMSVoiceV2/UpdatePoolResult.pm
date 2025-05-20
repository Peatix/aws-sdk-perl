
package Paws::PinpointSMSVoiceV2::UpdatePoolResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has MessageType => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');
  has PoolArn => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool');
  has SharedRoutesEnabled => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdatePoolResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the pool was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 DeletionProtectionEnabled => Bool

When set to true the pool can't be deleted.


=head2 MessageType => Str

The type of message for the pool to use.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 OptOutListName => Str

The name of the OptOutList associated with the pool.


=head2 PoolArn => Str

The ARN of the pool.


=head2 PoolId => Str

The unique identifier of the pool.


=head2 SelfManagedOptOutsEnabled => Bool

When an end recipient sends a message that begins with HELP or STOP to
one of your dedicated numbers, AWS End User Messaging SMS and Voice
automatically replies with a customizable message and adds the end
recipient to the OptOutList. When set to true you're responsible for
responding to HELP and STOP requests. You're also responsible for
tracking and honoring opt-out requests.


=head2 SharedRoutesEnabled => Bool

Indicates whether shared routes are enabled for the pool.


=head2 Status => Str

The current status of the pool update request.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">
=head2 TwoWayChannelArn => Str

The Amazon Resource Name (ARN) of the two way channel.


=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.


=head2 TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.


=head2 _request_id => Str


=cut

1;