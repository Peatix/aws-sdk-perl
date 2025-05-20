
package Paws::LexModelsV2::ListTestExecutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestExecutions => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::TestExecutionSummary]', traits => ['NameInRequest'], request_name => 'testExecutions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the ListTestExecutions operation. If the nextToken field is
present, you send the contents as the nextToken parameter of a
ListTestExecutions operation request to get the next page of results.


=head2 TestExecutions => ArrayRef[L<Paws::LexModelsV2::TestExecutionSummary>]

The list of test executions.


=head2 _request_id => Str


=cut

