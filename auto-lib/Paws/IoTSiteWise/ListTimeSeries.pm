
package Paws::IoTSiteWise::ListTimeSeries;
  use Moose;
  has AliasPrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'aliasPrefix');
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TimeSeriesType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timeSeriesType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTimeSeries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/timeseries/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListTimeSeriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListTimeSeries - Arguments for method ListTimeSeries on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTimeSeries on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListTimeSeries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTimeSeries.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListTimeSeriesResponse = $iotsitewise->ListTimeSeries(
      AliasPrefix    => 'MyPropertyAlias',    # OPTIONAL
      AssetId        => 'MyCustomID',         # OPTIONAL
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      TimeSeriesType => 'ASSOCIATED',         # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListTimeSeriesResponse->NextToken;
    my $TimeSeriesSummaries = $ListTimeSeriesResponse->TimeSeriesSummaries;

    # Returns a L<Paws::IoTSiteWise::ListTimeSeriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListTimeSeries>

=head1 ATTRIBUTES


=head2 AliasPrefix => Str

The alias prefix of the time series.



=head2 AssetId => Str

The ID of the asset in which the asset property was created. This can
be either the actual ID in UUID format, or else C<externalId:> followed
by the external ID, if it has one. For more information, see
Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 MaxResults => Int

The maximum number of results to return for each paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 TimeSeriesType => Str

The type of the time series. The time series type can be one of the
following values:

=over

=item *

C<ASSOCIATED> E<ndash> The time series is associated with an asset
property.

=item *

C<DISASSOCIATED> E<ndash> The time series isn't associated with any
asset property.

=back


Valid values are: C<"ASSOCIATED">, C<"DISASSOCIATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTimeSeries in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

