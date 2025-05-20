
package Paws::PinpointSMSVoiceV2::CreatePoolResult;
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreatePoolResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the pool was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 DeletionProtectionEnabled => Bool

When set to true deletion protection is enabled. By default this is set
to false.


=head2 MessageType => Str

The type of message for the pool to use.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 OptOutListName => Str

The name of the OptOutList associated with the pool.


=head2 PoolArn => Str

The Amazon Resource Name (ARN) for the pool.


=head2 PoolId => Str

The unique identifier for the pool.


=head2 SelfManagedOptOutsEnabled => Bool

By default this is set to false. When an end recipient sends a message
that begins with HELP or STOP to one of your dedicated numbers, AWS End
User Messaging SMS and Voice automatically replies with a customizable
message and adds the end recipient to the OptOutList. When set to true
you're responsible for responding to HELP and STOP requests. You're
also responsible for tracking and honoring opt-out requests.


=head2 SharedRoutesEnabled => Bool

Indicates whether shared routes are enabled for the pool. Set to false
and only origination identities in this pool are used to send messages.


=head2 Status => Str

The current status of the pool.

=over

=item *

CREATING: The pool is currently being created and isn't yet available
for use.

=item *

ACTIVE: The pool is active and available for use.

=item *

DELETING: The pool is being deleted.

=back


Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">
=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) associated with the pool.


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