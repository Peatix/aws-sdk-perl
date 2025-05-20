
package Paws::Prometheus::GetDefaultScraperConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::GetDefaultScraperConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => Str

The configuration file. Base 64 encoded. For more information, see
Scraper configuration
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration)in
the I<Amazon Managed Service for Prometheus User Guide>.


=head2 _request_id => Str


=cut

