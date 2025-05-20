
package Paws::BedrockAgentRuntime::CreateInvocation;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InvocationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationId');
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInvocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}/invocations/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::CreateInvocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::CreateInvocation - Arguments for method CreateInvocation on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInvocation on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method CreateInvocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInvocation.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $CreateInvocationResponse = $bedrock -agent-runtime->CreateInvocation(
      SessionIdentifier => 'MySessionIdentifier',
      Description       => 'MyInvocationDescription',    # OPTIONAL
      InvocationId      => 'MyUuid',                     # OPTIONAL
    );

    # Results:
    my $CreatedAt    = $CreateInvocationResponse->CreatedAt;
    my $InvocationId = $CreateInvocationResponse->InvocationId;
    my $SessionId    = $CreateInvocationResponse->SessionId;

    # Returns a L<Paws::BedrockAgentRuntime::CreateInvocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/CreateInvocation>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the interactions in the invocation. For example,
"User asking about weather in Seattle".



=head2 InvocationId => Str

A unique identifier for the invocation in UUID format.



=head2 B<REQUIRED> SessionIdentifier => Str

The unique identifier for the associated session for the invocation.
You can specify either the session's C<sessionId> or its Amazon
Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInvocation in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

