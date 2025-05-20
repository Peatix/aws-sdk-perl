
package Paws::QConnect::SearchQuickResponses;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::QConnect::ContactAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchExpression => (is => 'ro', isa => 'Paws::QConnect::QuickResponseSearchExpression', traits => ['NameInRequest'], request_name => 'searchExpression', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchQuickResponses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/search/quickResponses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::SearchQuickResponsesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SearchQuickResponses - Arguments for method SearchQuickResponses on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchQuickResponses on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method SearchQuickResponses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchQuickResponses.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $SearchQuickResponsesResponse = $wisdom->SearchQuickResponses(
      KnowledgeBaseId  => 'MyUuidOrArn',
      SearchExpression => {
        Filters => [
          {
            Name               => 'MyNonEmptyString',   # min: 1, max: 4096
            Operator           => 'EQUALS',             # values: EQUALS, PREFIX
            IncludeNoExistence => 1,                    # OPTIONAL
            Values             => [
              'MyQuickResponseFilterValue', ...         # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        OrderOnField => {
          Name  => 'MyNonEmptyString',    # min: 1, max: 4096
          Order => 'ASC',                 # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        Queries => [
          {
            Name     => 'MyNonEmptyString',    # min: 1, max: 4096
            Operator => 'CONTAINS',    # values: CONTAINS, CONTAINS_AND_PREFIX
            Values   => [
              'MyQuickResponseQueryValue', ...    # min: 1, max: 1024
            ],    # min: 1, max: 5
            AllowFuzziness => 1,         # OPTIONAL
            Priority       => 'HIGH',    # values: HIGH, MEDIUM, LOW; OPTIONAL
          },
          ...
        ],    # max: 4; OPTIONAL
      },
      Attributes => { 'MyContactAttributeKey' => 'MyContactAttributeValue', }
      ,                                    # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchQuickResponsesResponse->NextToken;
    my $Results   = $SearchQuickResponsesResponse->Results;

    # Returns a L<Paws::QConnect::SearchQuickResponsesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/SearchQuickResponses>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::QConnect::ContactAttributes>

The user-defined Amazon Connect contact attributes
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes)
to be resolved when search results are returned.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should be a QUICK_RESPONSES
type knowledge base. Can be either the ID or the ARN. URLs cannot
contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> SearchExpression => L<Paws::QConnect::QuickResponseSearchExpression>

The search expression for querying the quick response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchQuickResponses in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

