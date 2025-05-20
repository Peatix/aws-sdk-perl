
package Paws::BedrockAgentRuntime::GetSessionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has EncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKeyArn');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt', required => 1);
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has SessionMetadata => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::SessionMetadataMap', traits => ['NameInRequest'], request_name => 'sessionMetadata');
  has SessionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GetSessionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp for when the session was created.


=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the Key Management Service key used
to encrypt the session data. For more information, see Amazon Bedrock
session encryption
(https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html).


=head2 B<REQUIRED> LastUpdatedAt => Str

The timestamp for when the session was last modified.


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the session.


=head2 B<REQUIRED> SessionId => Str

The unique identifier for the session in UUID format.


=head2 SessionMetadata => L<Paws::BedrockAgentRuntime::SessionMetadataMap>

A map of key-value pairs containing attributes persisted across the
session.


=head2 B<REQUIRED> SessionStatus => Str

The current status of the session.

Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"ENDED">
=head2 _request_id => Str


=cut

