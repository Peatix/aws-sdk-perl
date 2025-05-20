
package Paws::LexModelsV2::ListTestExecutionResultItems;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResultFilterBy => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionResultFilterBy', traits => ['NameInRequest'], request_name => 'resultFilterBy', required => 1);
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestExecutionResultItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testexecutions/{testExecutionId}/results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListTestExecutionResultItemsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestExecutionResultItems - Arguments for method ListTestExecutionResultItems on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestExecutionResultItems on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListTestExecutionResultItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestExecutionResultItems.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListTestExecutionResultItemsResponse =
      $models - v2 -lex->ListTestExecutionResultItems(
      ResultFilterBy => {
        ResultTypeFilter => 'OverallTestResults'
        , # values: OverallTestResults, ConversationLevelTestResults, IntentClassificationTestResults, SlotResolutionTestResults, UtteranceLevelResults
        ConversationLevelTestResultsFilterBy => {
          EndToEndResult =>
            'Matched',   # values: Matched, Mismatched, ExecutionError; OPTIONAL
        },    # OPTIONAL
      },
      TestExecutionId => 'MyId',
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListTestExecutionResultItemsResponse->NextToken;
    my $TestExecutionResults =
      $ListTestExecutionResultItemsResponse->TestExecutionResults;

  # Returns a L<Paws::LexModelsV2::ListTestExecutionResultItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListTestExecutionResultItems>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test execution result items to return in each
page. If there are fewer results than the max page size, only the
actual number of results are returned.



=head2 NextToken => Str

If the response from the C<ListTestExecutionResultItems> operation
contains more results than specified in the C<maxResults> parameter, a
token is returned in the response. Use that token in the C<nextToken>
parameter to return the next page of results.



=head2 B<REQUIRED> ResultFilterBy => L<Paws::LexModelsV2::TestExecutionResultFilterBy>

The filter for the list of results from the test set execution.



=head2 B<REQUIRED> TestExecutionId => Str

The unique identifier of the test execution to list the result items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestExecutionResultItems in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

