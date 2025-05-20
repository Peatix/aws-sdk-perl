
package Paws::IoTSiteWise::ListAssetProperties;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has Filter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetProperties');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/properties');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssetPropertiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetProperties - Arguments for method ListAssetProperties on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetProperties on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssetProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetProperties.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssetPropertiesResponse = $iotsitewise->ListAssetProperties(
      AssetId    => 'MyCustomID',
      Filter     => 'ALL',            # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AssetPropertySummaries =
      $ListAssetPropertiesResponse->AssetPropertySummaries;
    my $NextToken = $ListAssetPropertiesResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAssetPropertiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssetProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset. This can be either the actual ID in UUID format,
or else C<externalId:> followed by the external ID, if it has one. For
more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 Filter => Str

Filters the requested list of asset properties. You can choose one of
the following options:

=over

=item *

C<ALL> E<ndash> The list includes all asset properties for a given
asset model ID.

=item *

C<BASE> E<ndash> The list includes only base asset properties for a
given asset model ID.

=back

Default: C<BASE>

Valid values are: C<"ALL">, C<"BASE">

=head2 MaxResults => Int

The maximum number of results to return for each paginated request. If
not specified, the default value is 50.



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetProperties in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

