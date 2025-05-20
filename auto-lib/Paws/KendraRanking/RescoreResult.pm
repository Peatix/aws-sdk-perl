
package Paws::KendraRanking::RescoreResult;
  use Moose;
  has RescoreId => (is => 'ro', isa => 'Str');
  has ResultItems => (is => 'ro', isa => 'ArrayRef[Paws::KendraRanking::RescoreResultItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::RescoreResult

=head1 ATTRIBUTES


=head2 RescoreId => Str

The identifier associated with the scores that Amazon Kendra
Intelligent Ranking gives to the results. Amazon Kendra Intelligent
Ranking rescores or re-ranks the results for the search service.


=head2 ResultItems => ArrayRef[L<Paws::KendraRanking::RescoreResultItem>]

A list of result items for documents with new relevancy scores. The
results are in descending order.


=head2 _request_id => Str


=cut

1;