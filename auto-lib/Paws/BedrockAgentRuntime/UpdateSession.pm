
package Paws::BedrockAgentRuntime::UpdateSession;
  use Moose;
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);
  has SessionMetadata => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::SessionMetadataMap', traits => ['NameInRequest'], request_name => 'sessionMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::UpdateSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::UpdateSession - Arguments for method UpdateSession on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSession on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method UpdateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSession.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $UpdateSessionResponse = $bedrock -agent-runtime->UpdateSession(
      SessionIdentifier => 'MySessionIdentifier',
      SessionMetadata   => {
        'MySessionMetadataKey' =>
          'MySessionMetadataValue',    # key: min: 1, max: 100, value: max: 5000
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt     = $UpdateSessionResponse->CreatedAt;
    my $LastUpdatedAt = $UpdateSessionResponse->LastUpdatedAt;
    my $SessionArn    = $UpdateSessionResponse->SessionArn;
    my $SessionId     = $UpdateSessionResponse->SessionId;
    my $SessionStatus = $UpdateSessionResponse->SessionStatus;

    # Returns a L<Paws::BedrockAgentRuntime::UpdateSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/UpdateSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionIdentifier => Str

The unique identifier of the session to modify. You can specify either
the session's C<sessionId> or its Amazon Resource Name (ARN).



=head2 SessionMetadata => L<Paws::BedrockAgentRuntime::SessionMetadataMap>

A map of key-value pairs containing attributes to be persisted across
the session. For example the user's ID, their language preference, and
the type of device they are using.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSession in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

