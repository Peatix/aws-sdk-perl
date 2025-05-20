
package Paws::QConnect::QueryAssistant;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OverrideKnowledgeBaseSearchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overrideKnowledgeBaseSearchType');
  has QueryCondition => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::QueryCondition]', traits => ['NameInRequest'], request_name => 'queryCondition');
  has QueryInputData => (is => 'ro', isa => 'Paws::QConnect::QueryInputData', traits => ['NameInRequest'], request_name => 'queryInputData');
  has QueryText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryText');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryAssistant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::QueryAssistantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::QueryAssistant - Arguments for method QueryAssistant on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryAssistant on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method QueryAssistant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryAssistant.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $QueryAssistantResponse = $wisdom->QueryAssistant(
      AssistantId                     => 'MyUuidOrArn',
      MaxResults                      => 1,                # OPTIONAL
      NextToken                       => 'MyNextToken',    # OPTIONAL
      OverrideKnowledgeBaseSearchType => 'HYBRID',         # OPTIONAL
      QueryCondition                  => [
        {
          Single => {
            Comparator => 'EQUALS',              # values: EQUALS
            Field      => 'RESULT_TYPE',         # values: RESULT_TYPE
            Value      => 'MyNonEmptyString',    # min: 1, max: 4096

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      QueryInputData => {
        IntentInputData => {
          IntentId => 'MyUuid',

        },    # OPTIONAL
        QueryTextInputData => {
          Text => 'MyQueryText',    # max: 512

        },    # OPTIONAL
      },    # OPTIONAL
      QueryText => 'MyQueryText',    # OPTIONAL
      SessionId => 'MyUuidOrArn',    # OPTIONAL
    );

    # Results:
    my $NextToken = $QueryAssistantResponse->NextToken;
    my $Results   = $QueryAssistantResponse->Results;

    # Returns a L<Paws::QConnect::QueryAssistantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/QueryAssistant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 OverrideKnowledgeBaseSearchType => Str

The search type to be used against the Knowledge Base for this request.
The values can be C<SEMANTIC> which uses vector embeddings or C<HYBRID>
which use vector embeddings and raw text.

Valid values are: C<"HYBRID">, C<"SEMANTIC">

=head2 QueryCondition => ArrayRef[L<Paws::QConnect::QueryCondition>]

Information about how to query content.



=head2 QueryInputData => L<Paws::QConnect::QueryInputData>

Information about the query.



=head2 QueryText => Str

The text to search for.



=head2 SessionId => Str

The identifier of the Amazon Q in Connect session. Can be either the ID
or the ARN. URLs cannot contain the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryAssistant in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

