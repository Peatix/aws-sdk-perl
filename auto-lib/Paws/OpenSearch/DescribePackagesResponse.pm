
package Paws::OpenSearch::DescribePackagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::PackageDetails]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribePackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 PackageDetailsList => ArrayRef[L<Paws::OpenSearch::PackageDetails>]

Basic information about a package.


=head2 _request_id => Str


=cut

