
package Paws::Prometheus::DescribeScraperResponse;
  use Moose;
  has Scraper => (is => 'ro', isa => 'Paws::Prometheus::ScraperDescription', traits => ['NameInRequest'], request_name => 'scraper', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeScraperResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Scraper => L<Paws::Prometheus::ScraperDescription>

Contains details about the scraper.


=head2 _request_id => Str


=cut

