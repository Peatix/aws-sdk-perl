
package Paws::LocationService::CreatePlaceIndex;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::LocationService::DataSourceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlaceIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreatePlaceIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreatePlaceIndex - Arguments for method CreatePlaceIndex on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlaceIndex on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreatePlaceIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlaceIndex.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreatePlaceIndexResponse = $geo->CreatePlaceIndex(
      DataSource              => 'MyString',
      IndexName               => 'MyResourceName',
      DataSourceConfiguration => {
        IntendedUse => 'SingleUse',    # values: SingleUse, Storage; OPTIONAL
      },    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      PricingPlan => 'RequestBasedUsage',        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreateTime = $CreatePlaceIndexResponse->CreateTime;
    my $IndexArn   = $CreatePlaceIndexResponse->IndexArn;
    my $IndexName  = $CreatePlaceIndexResponse->IndexName;

    # Returns a L<Paws::LocationService::CreatePlaceIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreatePlaceIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSource => Str

Specifies the geospatial data provider for the new place index.

This field is case-sensitive. Enter the valid values as shown. For
example, entering C<HERE> returns an error.

Valid values include:

=over

=item *

C<Esri> E<ndash> For additional information about Esri
(https://docs.aws.amazon.com/location/latest/developerguide/esri.html)'s
coverage in your region of interest, see Esri details on geocoding
coverage
(https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm).

=item *

C<Grab> E<ndash> Grab provides place index functionality for Southeast
Asia. For additional information about GrabMaps
(https://docs.aws.amazon.com/location/latest/developerguide/grab.html)'
coverage, see GrabMaps countries and areas covered
(https://docs.aws.amazon.com/location/latest/developerguide/grab.html#grab-coverage-area).

=item *

C<Here> E<ndash> For additional information about HERE Technologies
(https://docs.aws.amazon.com/location/latest/developerguide/HERE.html)'
coverage in your region of interest, see HERE details on goecoding
coverage
(https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html).

If you specify HERE Technologies (C<Here>) as the data provider, you
may not store results
(https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html)
for locations in Japan. For more information, see the Amazon Web
Services Service Terms (http://aws.amazon.com/service-terms/) for
Amazon Location Service.

=back

For additional information , see Data providers
(https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html)
on the I<Amazon Location Service Developer Guide>.



=head2 DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>

Specifies the data storage option requesting Places.



=head2 Description => Str

The optional description for the place index resource.



=head2 B<REQUIRED> IndexName => Str

The name of the place index resource.

Requirements:

=over

=item *

Contain only alphanumeric characters (AE<ndash>Z, aE<ndash>z,
0E<ndash>9), hyphens (-), periods (.), and underscores (_).

=item *

Must be a unique place index resource name.

=item *

No spaces allowed. For example, C<ExamplePlaceIndex>.

=back




=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the place index resource. A tag is a
key-value pair that helps you manage, identify, search, and filter your
resources.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource.

=item *

Each tag key must be unique and must have exactly one associated value.

=item *

Maximum key length: 128 Unicode characters in UTF-8.

=item *

Maximum value length: 256 Unicode characters in UTF-8.

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @

=item *

Cannot use "aws:" as a prefix for a key.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlaceIndex in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

