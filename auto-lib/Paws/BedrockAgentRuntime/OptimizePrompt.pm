
package Paws::BedrockAgentRuntime::OptimizePrompt;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InputPrompt', traits => ['NameInRequest'], request_name => 'input', required => 1);
  has TargetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetModelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OptimizePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/optimize-prompt');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::OptimizePromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::OptimizePrompt - Arguments for method OptimizePrompt on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OptimizePrompt on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method OptimizePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OptimizePrompt.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $OptimizePromptResponse = $bedrock -agent-runtime->OptimizePrompt(
      Input => {
        TextPrompt => {
          Text => 'MyTextPromptTextString',    # min: 1, max: 200000

        },    # OPTIONAL
      },
      TargetModelId => 'MyOptimizePromptRequestTargetModelIdString',

    );

    # Results:
    my $OptimizedPrompt = $OptimizePromptResponse->OptimizedPrompt;

    # Returns a L<Paws::BedrockAgentRuntime::OptimizePromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/OptimizePrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Input => L<Paws::BedrockAgentRuntime::InputPrompt>

Contains the prompt to optimize.



=head2 B<REQUIRED> TargetModelId => Str

The unique identifier of the model that you want to optimize the prompt
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OptimizePrompt in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

