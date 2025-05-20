
package Paws::LexModelsV2::ListTestSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestSets => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::TestSetSummary]', traits => ['NameInRequest'], request_name => 'testSets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the ListTestSets operation. If the nextToken field is
present, you send the contents as the nextToken parameter of a
ListTestSets operation request to get the next page of results.


=head2 TestSets => ArrayRef[L<Paws::LexModelsV2::TestSetSummary>]

The selected test sets in a list of test sets.


=head2 _request_id => Str


=cut

