
package Paws::IoTSiteWise::DescribeTimeSeriesResponse;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId');
  has DataType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataType', required => 1);
  has DataTypeSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataTypeSpec');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propertyId');
  has TimeSeriesArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeSeriesArn', required => 1);
  has TimeSeriesCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeSeriesCreationDate', required => 1);
  has TimeSeriesId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeSeriesId', required => 1);
  has TimeSeriesLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeSeriesLastUpdateDate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeTimeSeriesResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The alias that identifies the time series.


=head2 AssetId => Str

The ID of the asset in which the asset property was created.


=head2 B<REQUIRED> DataType => Str

The data type of the time series.

If you specify C<STRUCT>, you must also specify C<dataTypeSpec> to
identify the type of the structure for this time series.

Valid values are: C<"STRING">, C<"INTEGER">, C<"DOUBLE">, C<"BOOLEAN">, C<"STRUCT">
=head2 DataTypeSpec => Str

The data type of the structure for this time series. This parameter is
required for time series that have the C<STRUCT> data type.

The options for this parameter depend on the type of the composite
model in which you created the asset property that is associated with
your time series. Use C<AWS/ALARM_STATE> for alarm state in alarm
composite models.


=head2 PropertyId => Str

The ID of the asset property, in UUID format.


=head2 B<REQUIRED> TimeSeriesArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the time series, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}>


=head2 B<REQUIRED> TimeSeriesCreationDate => Str

The date that the time series was created, in Unix epoch time.


=head2 B<REQUIRED> TimeSeriesId => Str

The ID of the time series.


=head2 B<REQUIRED> TimeSeriesLastUpdateDate => Str

The date that the time series was last updated, in Unix epoch time.


=head2 _request_id => Str


=cut

