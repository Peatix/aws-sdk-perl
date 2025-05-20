
package Paws::Prometheus::DescribeScraper;
  use Moose;
  has ScraperId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scraperId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScraper');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scrapers/{scraperId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::DescribeScraperResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeScraper - Arguments for method DescribeScraper on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScraper on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method DescribeScraper.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScraper.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $DescribeScraperResponse = $aps->DescribeScraper(
      ScraperId => 'MyScraperId',

    );

    # Results:
    my $Scraper = $DescribeScraperResponse->Scraper;

    # Returns a L<Paws::Prometheus::DescribeScraperResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/DescribeScraper>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScraperId => Str

The ID of the scraper to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScraper in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

