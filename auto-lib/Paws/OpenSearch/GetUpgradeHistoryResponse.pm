
package Paws::OpenSearch::GetUpgradeHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UpgradeHistories => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::UpgradeHistory]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetUpgradeHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 UpgradeHistories => ArrayRef[L<Paws::OpenSearch::UpgradeHistory>]

A list of objects corresponding to each upgrade or upgrade eligibility
check performed on a domain.


=head2 _request_id => Str


=cut

