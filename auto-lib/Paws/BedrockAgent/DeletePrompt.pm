
package Paws::BedrockAgent::DeletePrompt;
  use Moose;
  has PromptIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'promptIdentifier', required => 1);
  has PromptVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'promptVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{promptIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeletePromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeletePrompt - Arguments for method DeletePrompt on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePrompt on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeletePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePrompt.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeletePromptResponse = $bedrock -agent->DeletePrompt(
      PromptIdentifier => 'MyPromptIdentifier',
      PromptVersion    => 'MyNumericalVersion',    # OPTIONAL
    );

    # Results:
    my $Id      = $DeletePromptResponse->Id;
    my $Version = $DeletePromptResponse->Version;

    # Returns a L<Paws::BedrockAgent::DeletePromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeletePrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PromptIdentifier => Str

The unique identifier of the prompt.



=head2 PromptVersion => Str

The version of the prompt to delete. To delete the prompt, omit this
field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePrompt in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

