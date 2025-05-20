
package Paws::BedrockAgentRuntime::EndSession;
  use Moose;
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EndSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::EndSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::EndSession - Arguments for method EndSession on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EndSession on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method EndSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EndSession.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $EndSessionResponse = $bedrock -agent-runtime->EndSession(
      SessionIdentifier => 'MySessionIdentifier',

    );

    # Results:
    my $SessionArn    = $EndSessionResponse->SessionArn;
    my $SessionId     = $EndSessionResponse->SessionId;
    my $SessionStatus = $EndSessionResponse->SessionStatus;

    # Returns a L<Paws::BedrockAgentRuntime::EndSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/EndSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionIdentifier => Str

The unique identifier for the session to end. You can specify either
the session's C<sessionId> or its Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EndSession in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

