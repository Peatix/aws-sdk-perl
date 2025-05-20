
package Paws::BedrockAgentRuntime::GetSession;
  use Moose;
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::GetSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GetSession - Arguments for method GetSession on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSession on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method GetSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSession.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $GetSessionResponse = $bedrock -agent-runtime->GetSession(
      SessionIdentifier => 'MySessionIdentifier',

    );

    # Results:
    my $CreatedAt        = $GetSessionResponse->CreatedAt;
    my $EncryptionKeyArn = $GetSessionResponse->EncryptionKeyArn;
    my $LastUpdatedAt    = $GetSessionResponse->LastUpdatedAt;
    my $SessionArn       = $GetSessionResponse->SessionArn;
    my $SessionId        = $GetSessionResponse->SessionId;
    my $SessionMetadata  = $GetSessionResponse->SessionMetadata;
    my $SessionStatus    = $GetSessionResponse->SessionStatus;

    # Returns a L<Paws::BedrockAgentRuntime::GetSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/GetSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionIdentifier => Str

A unique identifier for the session to retrieve. You can specify either
the session's C<sessionId> or its Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSession in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

