
package Paws::Prometheus::UpdateScraperResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ScraperId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scraperId', required => 1);
  has Status => (is => 'ro', isa => 'Paws::Prometheus::ScraperStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::UpdateScraperResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the updated scraper.


=head2 B<REQUIRED> ScraperId => Str

The ID of the updated scraper.


=head2 B<REQUIRED> Status => L<Paws::Prometheus::ScraperStatus>

A structure that displays the current status of the scraper.


=head2 Tags => L<Paws::Prometheus::TagMap>

The list of tag keys and values that are associated with the scraper.


=head2 _request_id => Str


=cut

