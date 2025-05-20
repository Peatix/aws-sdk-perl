
package Paws::IoTSiteWise::DisassociateTimeSeriesFromAssetProperty;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTimeSeriesFromAssetProperty');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/timeseries/disassociate/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DisassociateTimeSeriesFromAssetProperty - Arguments for method DisassociateTimeSeriesFromAssetProperty on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTimeSeriesFromAssetProperty on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DisassociateTimeSeriesFromAssetProperty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTimeSeriesFromAssetProperty.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    $iotsitewise->DisassociateTimeSeriesFromAssetProperty(
      Alias       => 'MyPropertyAlias',
      AssetId     => 'MyCustomID',
      PropertyId  => 'MyCustomID',
      ClientToken => 'MyClientToken',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DisassociateTimeSeriesFromAssetProperty>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The alias that identifies the time series.



=head2 B<REQUIRED> AssetId => Str

The ID of the asset in which the asset property was created. This can
be either the actual ID in UUID format, or else C<externalId:> followed
by the external ID, if it has one. For more information, see
Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PropertyId => Str

The ID of the asset property. This can be either the actual ID in UUID
format, or else C<externalId:> followed by the external ID, if it has
one. For more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTimeSeriesFromAssetProperty in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

