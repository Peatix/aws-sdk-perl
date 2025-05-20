
package Paws::QConnect::SearchContent;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchExpression => (is => 'ro', isa => 'Paws::QConnect::SearchExpression', traits => ['NameInRequest'], request_name => 'searchExpression', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::SearchContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SearchContent - Arguments for method SearchContent on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchContent on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method SearchContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchContent.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $SearchContentResponse = $wisdom->SearchContent(
      KnowledgeBaseId  => 'MyUuidOrArn',
      SearchExpression => {
        Filters => [
          {
            Field    => 'NAME',                # values: NAME
            Operator => 'EQUALS',              # values: EQUALS
            Value    => 'MyNonEmptyString',    # min: 1, max: 4096

          },
          ...
        ],

      },
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ContentSummaries = $SearchContentResponse->ContentSummaries;
    my $NextToken        = $SearchContentResponse->NextToken;

    # Returns a L<Paws::QConnect::SearchContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/SearchContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> SearchExpression => L<Paws::QConnect::SearchExpression>

The search expression to filter results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchContent in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

