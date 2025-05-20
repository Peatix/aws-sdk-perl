
package Paws::BedrockAgent::ListPrompts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PromptIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'promptIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrompts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ListPromptsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListPrompts - Arguments for method ListPrompts on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrompts on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ListPrompts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrompts.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ListPromptsResponse = $bedrock -agent->ListPrompts(
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyNextToken',           # OPTIONAL
      PromptIdentifier => 'MyPromptIdentifier',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListPromptsResponse->NextToken;
    my $PromptSummaries = $ListPromptsResponse->PromptSummaries;

    # Returns a L<Paws::BedrockAgent::ListPromptsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ListPrompts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 PromptIdentifier => Str

The unique identifier of the prompt for whose versions you want to
return information. Omit this field to list information about all
prompts in an account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrompts in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

