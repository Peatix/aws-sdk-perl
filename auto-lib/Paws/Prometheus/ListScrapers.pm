
package Paws::Prometheus::ListScrapers;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Prometheus::ScraperFilters', traits => ['ParamInQuery'], query_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScrapers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scrapers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::ListScrapersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListScrapers - Arguments for method ListScrapers on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScrapers on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method ListScrapers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScrapers.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $ListScrapersResponse = $aps->ListScrapers(
      Filters => {
        'MyFilterKey' => [
          'MyFilterValue', ...    # min: 1, max: 256
        ],    # key: min: 1, max: 256, value: min: 1, max: 20
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListScrapersResponse->NextToken;
    my $Scrapers  = $ListScrapersResponse->Scrapers;

    # Returns a L<Paws::Prometheus::ListScrapersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/ListScrapers>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Prometheus::ScraperFilters>

(Optional) A list of key-value pairs to filter the list of scrapers
returned. Keys include C<status>, C<sourceArn>, C<destinationArn>, and
C<alias>.

Filters on the same key are C<OR>'d together, and filters on different
keys are C<AND>'d together. For example,
C<status=ACTIVE&status=CREATING&alias=Test>, will return all scrapers
that have the alias Test, and are either in status ACTIVE or CREATING.

To find all active scrapers that are sending metrics to a specific
Amazon Managed Service for Prometheus workspace, you would use the ARN
of the workspace in a query:

C<status=ACTIVE&destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012>

If this is included, it filters the results to only the scrapers that
match the filter.



=head2 MaxResults => Int

Optional) The maximum number of scrapers to return in one
C<ListScrapers> operation. The range is 1-1000.

If you omit this parameter, the default of 100 is used.



=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScrapers in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

