
package Paws::Prometheus::CreateScraper;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Destination => (is => 'ro', isa => 'Paws::Prometheus::Destination', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has RoleConfiguration => (is => 'ro', isa => 'Paws::Prometheus::RoleConfiguration', traits => ['NameInRequest'], request_name => 'roleConfiguration');
  has ScrapeConfiguration => (is => 'ro', isa => 'Paws::Prometheus::ScrapeConfiguration', traits => ['NameInRequest'], request_name => 'scrapeConfiguration', required => 1);
  has Source => (is => 'ro', isa => 'Paws::Prometheus::Source', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScraper');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scrapers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::CreateScraperResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateScraper - Arguments for method CreateScraper on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScraper on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method CreateScraper.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScraper.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $CreateScraperResponse = $aps->CreateScraper(
      Destination => {
        AmpConfiguration => {
          WorkspaceArn => 'MyWorkspaceArn',

        },    # OPTIONAL
      },
      ScrapeConfiguration => {
        ConfigurationBlob => 'BlobBlob',    # OPTIONAL
      },
      Source => {
        EksConfiguration => {
          ClusterArn => 'MyClusterArn',
          SubnetIds  => [
            'MySubnetId', ...    # max: 255
          ],    # min: 1, max: 5
          SecurityGroupIds => [
            'MySecurityGroupId', ...    # max: 255
          ],    # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
      },
      Alias             => 'MyScraperAlias',        # OPTIONAL
      ClientToken       => 'MyIdempotencyToken',    # OPTIONAL
      RoleConfiguration => {
        SourceRoleArn => 'MyIamRoleArn',            # OPTIONAL
        TargetRoleArn => 'MyIamRoleArn',            # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateScraperResponse->Arn;
    my $ScraperId = $CreateScraperResponse->ScraperId;
    my $Status    = $CreateScraperResponse->Status;
    my $Tags      = $CreateScraperResponse->Tags;

    # Returns a L<Paws::Prometheus::CreateScraperResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/CreateScraper>

=head1 ATTRIBUTES


=head2 Alias => Str

(optional) An alias to associate with the scraper. This is for your
use, and does not need to be unique.



=head2 ClientToken => Str

(Optional) A unique, case-sensitive identifier that you can provide to
ensure the idempotency of the request.



=head2 B<REQUIRED> Destination => L<Paws::Prometheus::Destination>

The Amazon Managed Service for Prometheus workspace to send metrics to.



=head2 RoleConfiguration => L<Paws::Prometheus::RoleConfiguration>

Use this structure to enable cross-account access, so that you can use
a target account to access Prometheus metrics from source accounts.



=head2 B<REQUIRED> ScrapeConfiguration => L<Paws::Prometheus::ScrapeConfiguration>

The configuration file to use in the new scraper. For more information,
see Scraper configuration
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration)
in the I<Amazon Managed Service for Prometheus User Guide>.



=head2 B<REQUIRED> Source => L<Paws::Prometheus::Source>

The Amazon EKS cluster from which the scraper will collect metrics.



=head2 Tags => L<Paws::Prometheus::TagMap>

(Optional) The list of tag keys and values to associate with the
scraper.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScraper in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

