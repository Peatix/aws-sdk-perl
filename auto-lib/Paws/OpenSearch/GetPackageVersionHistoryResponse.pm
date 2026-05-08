
package Paws::OpenSearch::GetPackageVersionHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageID => (is => 'ro', isa => 'Str');
  has PackageVersionHistoryList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::PackageVersionHistory]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetPackageVersionHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 PackageID => Str

The unique identifier of the package.


=head2 PackageVersionHistoryList => ArrayRef[L<Paws::OpenSearch::PackageVersionHistory>]

A list of package versions, along with their creation time and commit
message.


=head2 _request_id => Str


=cut

