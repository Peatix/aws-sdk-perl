
package Paws::LexModelsV2::ListTestExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testexecutions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListTestExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestExecutions - Arguments for method ListTestExecutions on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestExecutions on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListTestExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestExecutions.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListTestExecutionsResponse = $models - v2 -lex->ListTestExecutions(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'TestSetName',    # values: TestSetName, CreationDateTime
        Order     => 'Ascending',      # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListTestExecutionsResponse->NextToken;
    my $TestExecutions = $ListTestExecutionsResponse->TestExecutions;

    # Returns a L<Paws::LexModelsV2::ListTestExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListTestExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test executions to return in each page. If there
are fewer results than the max page size, only the actual number of
results are returned.



=head2 NextToken => Str

If the response from the ListTestExecutions operation contains more
results than specified in the maxResults parameter, a token is returned
in the response. Use that token in the nextToken parameter to return
the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::TestExecutionSortBy>

The sort order of the test set executions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestExecutions in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

