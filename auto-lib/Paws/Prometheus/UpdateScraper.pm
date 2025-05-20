
package Paws::Prometheus::UpdateScraper;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Destination => (is => 'ro', isa => 'Paws::Prometheus::Destination', traits => ['NameInRequest'], request_name => 'destination');
  has RoleConfiguration => (is => 'ro', isa => 'Paws::Prometheus::RoleConfiguration', traits => ['NameInRequest'], request_name => 'roleConfiguration');
  has ScrapeConfiguration => (is => 'ro', isa => 'Paws::Prometheus::ScrapeConfiguration', traits => ['NameInRequest'], request_name => 'scrapeConfiguration');
  has ScraperId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scraperId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScraper');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scrapers/{scraperId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::UpdateScraperResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::UpdateScraper - Arguments for method UpdateScraper on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScraper on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method UpdateScraper.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScraper.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $UpdateScraperResponse = $aps->UpdateScraper(
      ScraperId   => 'MyScraperId',
      Alias       => 'MyScraperAlias',        # OPTIONAL
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      Destination => {
        AmpConfiguration => {
          WorkspaceArn => 'MyWorkspaceArn',

        },                                    # OPTIONAL
      },    # OPTIONAL
      RoleConfiguration => {
        SourceRoleArn => 'MyIamRoleArn',    # OPTIONAL
        TargetRoleArn => 'MyIamRoleArn',    # OPTIONAL
      },    # OPTIONAL
      ScrapeConfiguration => {
        ConfigurationBlob => 'BlobBlob',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $UpdateScraperResponse->Arn;
    my $ScraperId = $UpdateScraperResponse->ScraperId;
    my $Status    = $UpdateScraperResponse->Status;
    my $Tags      = $UpdateScraperResponse->Tags;

    # Returns a L<Paws::Prometheus::UpdateScraperResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/UpdateScraper>

=head1 ATTRIBUTES


=head2 Alias => Str

The new alias of the scraper.



=head2 ClientToken => Str

A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.



=head2 Destination => L<Paws::Prometheus::Destination>

The new Amazon Managed Service for Prometheus workspace to send metrics
to.



=head2 RoleConfiguration => L<Paws::Prometheus::RoleConfiguration>

Use this structure to enable cross-account access, so that you can use
a target account to access Prometheus metrics from source accounts.



=head2 ScrapeConfiguration => L<Paws::Prometheus::ScrapeConfiguration>

Contains the base-64 encoded YAML configuration for the scraper.

For more information about configuring a scraper, see Using an Amazon
Web Services managed collector
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html)
in the I<Amazon Managed Service for Prometheus User Guide>.



=head2 B<REQUIRED> ScraperId => Str

The ID of the scraper to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScraper in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

