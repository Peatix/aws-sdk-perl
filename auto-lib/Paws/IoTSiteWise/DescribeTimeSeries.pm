
package Paws::IoTSiteWise::DescribeTimeSeries;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias');
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeSeries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/timeseries/describe/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeTimeSeriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeTimeSeries - Arguments for method DescribeTimeSeries on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTimeSeries on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeTimeSeries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTimeSeries.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeTimeSeriesResponse = $iotsitewise->DescribeTimeSeries(
      Alias      => 'MyPropertyAlias',    # OPTIONAL
      AssetId    => 'MyCustomID',         # OPTIONAL
      PropertyId => 'MyCustomID',         # OPTIONAL
    );

    # Results:
    my $Alias         = $DescribeTimeSeriesResponse->Alias;
    my $AssetId       = $DescribeTimeSeriesResponse->AssetId;
    my $DataType      = $DescribeTimeSeriesResponse->DataType;
    my $DataTypeSpec  = $DescribeTimeSeriesResponse->DataTypeSpec;
    my $PropertyId    = $DescribeTimeSeriesResponse->PropertyId;
    my $TimeSeriesArn = $DescribeTimeSeriesResponse->TimeSeriesArn;
    my $TimeSeriesCreationDate =
      $DescribeTimeSeriesResponse->TimeSeriesCreationDate;
    my $TimeSeriesId = $DescribeTimeSeriesResponse->TimeSeriesId;
    my $TimeSeriesLastUpdateDate =
      $DescribeTimeSeriesResponse->TimeSeriesLastUpdateDate;

    # Returns a L<Paws::IoTSiteWise::DescribeTimeSeriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeTimeSeries>

=head1 ATTRIBUTES


=head2 Alias => Str

The alias that identifies the time series.



=head2 AssetId => Str

The ID of the asset in which the asset property was created. This can
be either the actual ID in UUID format, or else C<externalId:> followed
by the external ID, if it has one. For more information, see
Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 PropertyId => Str

The ID of the asset property. This can be either the actual ID in UUID
format, or else C<externalId:> followed by the external ID, if it has
one. For more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTimeSeries in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

