
package Paws::BedrockAgentRuntime::Rerank;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::RerankQuery]', traits => ['NameInRequest'], request_name => 'queries', required => 1);
  has RerankingConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RerankingConfiguration', traits => ['NameInRequest'], request_name => 'rerankingConfiguration', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::RerankSource]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Rerank');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rerank');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::RerankResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::Rerank - Arguments for method Rerank on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Rerank on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method Rerank.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Rerank.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $RerankResponse = $bedrock -agent-runtime->Rerank(
      Queries => [
        {
          TextQuery => {
            Text =>
              'MyRerankTextDocumentTextString',   # min: 1, max: 32000; OPTIONAL
          },
          Type => 'TEXT',                         # values: TEXT

        },
        ...
      ],
      RerankingConfiguration => {
        BedrockRerankingConfiguration => {
          ModelConfiguration => {
            ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048
            AdditionalModelRequestFields => {
              'MyAdditionalModelRequestFieldsKey' => {

              },                                # key: min: 1, max: 100
            },    # OPTIONAL
          },
          NumberOfResults => 1,    # min: 1, max: 1000; OPTIONAL
        },
        Type => 'BEDROCK_RERANKING_MODEL',    # values: BEDROCK_RERANKING_MODEL

      },
      Sources => [
        {
          InlineDocumentSource => {
            Type         => 'TEXT',    # values: TEXT, JSON
            JsonDocument => {

            },                         # OPTIONAL
            TextDocument => {
              Text =>
                'MyRerankTextDocumentTextString', # min: 1, max: 32000; OPTIONAL
            },
          },
          Type => 'INLINE',                       # values: INLINE

        },
        ...
      ],
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $RerankResponse->NextToken;
    my $Results   = $RerankResponse->Results;

    # Returns a L<Paws::BedrockAgentRuntime::RerankResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/Rerank>

=head1 ATTRIBUTES


=head2 NextToken => Str

If the total number of results was greater than could fit in a
response, a token is returned in the C<nextToken> field. You can enter
that token in this field to return the next batch of results.



=head2 B<REQUIRED> Queries => ArrayRef[L<Paws::BedrockAgentRuntime::RerankQuery>]

An array of objects, each of which contains information about a query
to submit to the reranker model.



=head2 B<REQUIRED> RerankingConfiguration => L<Paws::BedrockAgentRuntime::RerankingConfiguration>

Contains configurations for reranking.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::BedrockAgentRuntime::RerankSource>]

An array of objects, each of which contains information about the
sources to rerank.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Rerank in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

