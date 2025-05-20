
package Paws::IoTSiteWise::ListDatasets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListDatasetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListDatasets - Arguments for method ListDatasets on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListDatasetsResponse = $iotsitewise->ListDatasets(
      SourceType => 'KENDRA',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatasetSummaries = $ListDatasetsResponse->DatasetSummaries;
    my $NextToken        = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListDatasets>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return for each paginated request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.



=head2 B<REQUIRED> SourceType => Str

The type of data source for the dataset.

Valid values are: C<"KENDRA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

