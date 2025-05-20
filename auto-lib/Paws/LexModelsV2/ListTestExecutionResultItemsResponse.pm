
package Paws::LexModelsV2::ListTestExecutionResultItemsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestExecutionResults => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionResultItems', traits => ['NameInRequest'], request_name => 'testExecutionResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestExecutionResultItemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListTestExecutionResultItems> operation. If the
C<nextToken> field is present, you send the contents as the
C<nextToken> parameter of a C<ListTestExecutionResultItems> operation
request to get the next page of results.


=head2 TestExecutionResults => L<Paws::LexModelsV2::TestExecutionResultItems>

The list of results from the test execution.


=head2 _request_id => Str


=cut

