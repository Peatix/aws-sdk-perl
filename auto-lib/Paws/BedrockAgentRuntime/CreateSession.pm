
package Paws::BedrockAgentRuntime::CreateSession;
  use Moose;
  has EncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKeyArn');
  has SessionMetadata => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::SessionMetadataMap', traits => ['NameInRequest'], request_name => 'sessionMetadata');
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::CreateSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::CreateSession - Arguments for method CreateSession on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSession on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method CreateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSession.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $CreateSessionResponse = $bedrock -agent-runtime->CreateSession(
      EncryptionKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      SessionMetadata  => {
        'MySessionMetadataKey' =>
          'MySessionMetadataValue',    # key: min: 1, max: 100, value: max: 5000
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt     = $CreateSessionResponse->CreatedAt;
    my $SessionArn    = $CreateSessionResponse->SessionArn;
    my $SessionId     = $CreateSessionResponse->SessionId;
    my $SessionStatus = $CreateSessionResponse->SessionStatus;

    # Returns a L<Paws::BedrockAgentRuntime::CreateSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/CreateSession>

=head1 ATTRIBUTES


=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key to use to encrypt the
session data. The user or role creating the session must have
permission to use the key. For more information, see Amazon Bedrock
session encryption
(https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html).



=head2 SessionMetadata => L<Paws::BedrockAgentRuntime::SessionMetadataMap>

A map of key-value pairs containing attributes to be persisted across
the session. For example, the user's ID, their language preference, and
the type of device they are using.



=head2 Tags => L<Paws::BedrockAgentRuntime::TagsMap>

Specify the key-value pairs for the tags that you want to attach to the
session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSession in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

