
package Paws::Prometheus::DeleteScraperResponse;
  use Moose;
  has ScraperId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scraperId', required => 1);
  has Status => (is => 'ro', isa => 'Paws::Prometheus::ScraperStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DeleteScraperResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScraperId => Str

The ID of the scraper to delete.


=head2 B<REQUIRED> Status => L<Paws::Prometheus::ScraperStatus>

The current status of the scraper.


=head2 _request_id => Str


=cut

