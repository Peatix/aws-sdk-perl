
package Paws::DataZone::ListTimeSeriesDataPoints;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endedAt');
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has FormName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'formName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startedAt');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTimeSeriesDataPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListTimeSeriesDataPointsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListTimeSeriesDataPoints - Arguments for method ListTimeSeriesDataPoints on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTimeSeriesDataPoints on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListTimeSeriesDataPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTimeSeriesDataPoints.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListTimeSeriesDataPointsOutput = $datazone->ListTimeSeriesDataPoints(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyEntityIdentifier',
      EntityType       => 'ASSET',
      FormName         => 'MyTimeSeriesFormName',
      EndedAt          => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyPaginationToken',      # OPTIONAL
      StartedAt        => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListTimeSeriesDataPointsOutput->Items;
    my $NextToken = $ListTimeSeriesDataPointsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListTimeSeriesDataPointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListTimeSeriesDataPoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain that houses the assets for which
you want to list time series data points.



=head2 EndedAt => Str

The timestamp at which the data points that you wanted to list ended.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the asset for which you want to list data points.



=head2 B<REQUIRED> EntityType => Str

The type of the asset for which you want to list data points.

Valid values are: C<"ASSET">, C<"LISTING">

=head2 B<REQUIRED> FormName => Str

The name of the time series data points form.



=head2 MaxResults => Int

The maximum number of data points to return in a single call to
ListTimeSeriesDataPoints. When the number of data points to be listed
is greater than the value of MaxResults, the response contains a
NextToken value that you can use in a subsequent call to
ListTimeSeriesDataPoints to list the next set of data points.



=head2 NextToken => Str

When the number of data points is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of data points, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListTimeSeriesDataPoints to
list the next set of data points.



=head2 StartedAt => Str

The timestamp at which the data points that you want to list started.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTimeSeriesDataPoints in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

