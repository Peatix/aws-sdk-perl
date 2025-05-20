
package Paws::IoT::GetCommandResponse;
  use Moose;
  has CommandArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandArn');
  has CommandId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandId');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Deprecated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deprecated');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has MandatoryParameters => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CommandParameter]', traits => ['NameInRequest'], request_name => 'mandatoryParameters');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has Payload => (is => 'ro', isa => 'Paws::IoT::CommandPayload', traits => ['NameInRequest'], request_name => 'payload');
  has PendingDeletion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'pendingDeletion');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetCommandResponse

=head1 ATTRIBUTES


=head2 CommandArn => Str

The Amazon Resource Number (ARN) of the command. For example,
C<arn:aws:iot:E<lt>regionE<gt>:E<lt>accountidE<gt>:command/E<lt>commandIdE<gt>>


=head2 CommandId => Str

The unique identifier of the command.


=head2 CreatedAt => Str

The timestamp, when the command was created.


=head2 Deprecated => Bool

Indicates whether the command has been deprecated.


=head2 Description => Str

A short text description of the command.


=head2 DisplayName => Str

The user-friendly name in the console for the command.


=head2 LastUpdatedAt => Str

The timestamp, when the command was last updated.


=head2 MandatoryParameters => ArrayRef[L<Paws::IoT::CommandParameter>]

A list of parameters for the command created.


=head2 Namespace => Str

The namespace of the command.

Valid values are: C<"AWS-IoT">, C<"AWS-IoT-FleetWise">
=head2 Payload => L<Paws::IoT::CommandPayload>

The payload object that you provided for the command.


=head2 PendingDeletion => Bool

Indicates whether the command is being deleted.


=head2 RoleArn => Str

The IAM role that you provided when creating the command with
C<AWS-IoT-FleetWise> as the namespace.


=head2 _request_id => Str


=cut

