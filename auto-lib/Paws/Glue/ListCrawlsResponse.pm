
package Paws::Glue::ListCrawlsResponse;
  use Moose;
  has Crawls => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CrawlerHistory]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListCrawlsResponse

=head1 ATTRIBUTES


=head2 Crawls => ArrayRef[L<Paws::Glue::CrawlerHistory>]

A list of C<CrawlerHistory> objects representing the crawl runs that
meet your criteria.


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 _request_id => Str


=cut

1;