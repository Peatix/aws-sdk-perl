
package Paws::Prometheus::ListScrapersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Scrapers => (is => 'ro', isa => 'ArrayRef[Paws::Prometheus::ScraperSummary]', traits => ['NameInRequest'], request_name => 'scrapers', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListScrapersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are more results to retrieve. You can use
this token as part of your next C<ListScrapers> operation to retrieve
those results.


=head2 B<REQUIRED> Scrapers => ArrayRef[L<Paws::Prometheus::ScraperSummary>]

A list of C<ScraperSummary> structures giving information about
scrapers in the account that match the filters provided.


=head2 _request_id => Str


=cut

