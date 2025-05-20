
package Paws::GeoMaps::GetStaticMap;
  use Moose;
  has BoundedPositions => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'bounded-positions');
  has BoundingBox => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'bounding-box');
  has Center => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'center');
  has ColorScheme => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'color-scheme');
  has CompactOverlay => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'compact-overlay');
  has CropLabels => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'crop-labels');
  has FileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileName', required => 1);
  has GeoJsonOverlay => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'geojson-overlay');
  has Height => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'height', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has LabelSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'label-size');
  has Language => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'lang');
  has Padding => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'padding');
  has PointsOfInterests => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'pois');
  has PoliticalView => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'political-view');
  has Radius => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'radius');
  has ScaleBarUnit => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'scale-unit');
  has Style => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'style');
  has Width => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'width', required => 1);
  has Zoom => (is => 'ro', isa => 'Num', traits => ['ParamInQuery'], query_name => 'zoom');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStaticMap');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/static/{FileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoMaps::GetStaticMapResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetStaticMap - Arguments for method GetStaticMap on L<Paws::GeoMaps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStaticMap on the
L<Amazon Location Service Maps V2|Paws::GeoMaps> service. Use the attributes of this class
as arguments to method GetStaticMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStaticMap.

=head1 SYNOPSIS

    my $geo-maps = Paws->service('GeoMaps');
    my $GetStaticMapResponse = $geo -maps->GetStaticMap(
      FileName          => 'MyGetStaticMapRequestFileNameString',
      Height            => 1,
      Width             => 1,
      BoundedPositions  => 'MyPositionListString',                  # OPTIONAL
      BoundingBox       => 'MyPositionListString',                  # OPTIONAL
      Center            => 'MyPositionString',                      # OPTIONAL
      ColorScheme       => 'Light',                                 # OPTIONAL
      CompactOverlay    => 'MyCompactOverlay',                      # OPTIONAL
      CropLabels        => 1,                                       # OPTIONAL
      GeoJsonOverlay    => 'MyGeoJsonOverlay',                      # OPTIONAL
      Key               => 'MyApiKey',                              # OPTIONAL
      LabelSize         => 'Small',                                 # OPTIONAL
      Language          => 'MyLanguageTag',                         # OPTIONAL
      Padding           => 1,                                       # OPTIONAL
      PointsOfInterests => 'Enabled',                               # OPTIONAL
      PoliticalView     => 'MyCountryCode',                         # OPTIONAL
      Radius            => 1,                                       # OPTIONAL
      ScaleBarUnit      => 'Kilometers',                            # OPTIONAL
      Style             => 'Satellite',                             # OPTIONAL
      Zoom              => 1.0,                                     # OPTIONAL
    );

    # Results:
    my $Blob          = $GetStaticMapResponse->Blob;
    my $CacheControl  = $GetStaticMapResponse->CacheControl;
    my $ContentType   = $GetStaticMapResponse->ContentType;
    my $ETag          = $GetStaticMapResponse->ETag;
    my $PricingBucket = $GetStaticMapResponse->PricingBucket;

    # Returns a L<Paws::GeoMaps::GetStaticMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps/GetStaticMap>

=head1 ATTRIBUTES


=head2 BoundedPositions => Str

Takes in two or more pair of coordinates, [Lon, Lat], with each
coordinate separated by a comma. The API will generate an image to
encompass all of the provided coordinates.

Cannot be used with C<Zoom> and or C<Radius>

Example: 97.170451,78.039098,99.045536,27.176178



=head2 BoundingBox => Str

Takes in two pairs of coordinates, [Lon, Lat], denoting south-westerly
and north-easterly edges of the image. The underlying area becomes the
view of the image.

Example: -123.17075,49.26959,-123.08125,49.31429



=head2 Center => Str

Takes in a pair of coordinates, [Lon, Lat], which becomes the center
point of the image. This parameter requires that either zoom or radius
is set.

Cannot be used with C<Zoom> and or C<Radius>

Example: 49.295,-123.108



=head2 ColorScheme => Str

Sets color tone for map, such as dark and light for specific map
styles. It only applies to vector map styles, such as Standard.

Example: C<Light>

Default value: C<Light>

Valid values for C<ColorScheme> are case sensitive.

Valid values are: C<"Light">, C<"Dark">

=head2 CompactOverlay => Str

Takes in a string to draw geometries on the image. The input is a comma
separated format as follows format: C<[Lon, Lat]>

Example:
C<line:-122.407653,37.798557,-122.413291,37.802443;color=%23DD0000;width=7;outline-color=#00DD00;outline-width=5yd|point:-122.40572,37.80004;label=Fog
Hill Market;size=large;text-color=%23DD0000;color=#EE4B2B>

Currently it supports the following geometry types: point, line and
polygon. It does not support multiPoint , multiLine and multiPolgyon.



=head2 CropLabels => Bool

It is a flag that takes in true or false. It prevents the labels that
are on the edge of the image from being cut or obscured.



=head2 B<REQUIRED> FileName => Str

The map scaling parameter to size the image, icons, and labels. It
follows the pattern of C<^map(@2x)?$>.

Example: C<map, map@2x>



=head2 GeoJsonOverlay => Str

Takes in a string to draw geometries on the image. The input is a valid
GeoJSON collection object.

Example: C<{"type":"FeatureCollection","features":
[{"type":"Feature","geometry":{"type":"MultiPoint","coordinates":
[[-90.076345,51.504107],[-0.074451,51.506892]]},"properties":
{"color":"#00DD00"}}]}>



=head2 B<REQUIRED> Height => Int

Specifies the height of the map image.



=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 LabelSize => Str

Overrides the label size auto-calculated by C<FileName>. Takes in one
of the values - C<Small> or C<Large>.

Valid values are: C<"Small">, C<"Large">

=head2 Language => Str

Specifies the language on the map labels using the BCP 47 language tag,
limited to ISO 639-1 two-letter language codes. If the specified
language data isn't available for the map image, the labels will
default to the regional primary language.

Supported codes:

=over

=item *

C<ar>

=item *

C<as>

=item *

C<az>

=item *

C<be>

=item *

C<bg>

=item *

C<bn>

=item *

C<bs>

=item *

C<ca>

=item *

C<cs>

=item *

C<cy>

=item *

C<da>

=item *

C<de>

=item *

C<el>

=item *

C<en>

=item *

C<es>

=item *

C<et>

=item *

C<eu>

=item *

C<fi>

=item *

C<fo>

=item *

C<fr>

=item *

C<ga>

=item *

C<gl>

=item *

C<gn>

=item *

C<gu>

=item *

C<he>

=item *

C<hi>

=item *

C<hr>

=item *

C<hu>

=item *

C<hy>

=item *

C<id>

=item *

C<is>

=item *

C<it>

=item *

C<ja>

=item *

C<ka>

=item *

C<kk>

=item *

C<km>

=item *

C<kn>

=item *

C<ko>

=item *

C<ky>

=item *

C<lt>

=item *

C<lv>

=item *

C<mk>

=item *

C<ml>

=item *

C<mr>

=item *

C<ms>

=item *

C<mt>

=item *

C<my>

=item *

C<nl>

=item *

C<no>

=item *

C<or>

=item *

C<pa>

=item *

C<pl>

=item *

C<pt>

=item *

C<ro>

=item *

C<ru>

=item *

C<sk>

=item *

C<sl>

=item *

C<sq>

=item *

C<sr>

=item *

C<sv>

=item *

C<ta>

=item *

C<te>

=item *

C<th>

=item *

C<tr>

=item *

C<uk>

=item *

C<uz>

=item *

C<vi>

=item *

C<zh>

=back




=head2 Padding => Int

Applies additional space (in pixels) around overlay feature to prevent
them from being cut or obscured.

Value for max and min is determined by:

Min: C<1>

Max: C<min(height, width)/4>

Example: C<100>



=head2 PointsOfInterests => Str

Determines if the result image will display icons representing points
of interest on the map.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 PoliticalView => Str

Specifies the political view, using ISO 3166-2 or ISO 3166-3 country
code format.

The following political views are currently supported:

=over

=item *

C<ARG>: Argentina's view on the Southern Patagonian Ice Field and
Tierra Del Fuego, including the Falkland Islands, South Georgia, and
South Sandwich Islands

=item *

C<EGY>: Egypt's view on Bir Tawil

=item *

C<IND>: India's view on Gilgit-Baltistan

=item *

C<KEN>: Kenya's view on the Ilemi Triangle

=item *

C<MAR>: Morocco's view on Western Sahara

=item *

C<RUS>: Russia's view on Crimea

=item *

C<SDN>: Sudan's view on the Halaib Triangle

=item *

C<SRB>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands

=item *

C<SUR>: Suriname's view on the Courantyne Headwaters and Lawa
Headwaters

=item *

C<SYR>: Syria's view on the Golan Heights

=item *

C<TUR>: Turkey's view on Cyprus and Northern Cyprus

=item *

C<TZA>: Tanzania's view on Lake Malawi

=item *

C<URY>: Uruguay's view on Rincon de Artigas

=item *

C<VNM>: Vietnam's view on the Paracel Islands and Spratly Islands

=back




=head2 Radius => Int

Used with center parameter, it specifies the zoom of the image where
you can control it on a granular level. Takes in any value C<E<gt>= 1>.

Example: C<1500>

Cannot be used with C<Zoom>.

B<Unit>: C<Meters>



=head2 ScaleBarUnit => Str

Displays a scale on the bottom right of the map image with the unit
specified in the input.

Example: C<KilometersMiles, Miles, Kilometers, MilesKilometers>

Valid values are: C<"Kilometers">, C<"KilometersMiles">, C<"Miles">, C<"MilesKilometers">

=head2 Style => Str

C<Style> specifies the desired map style.

Valid values are: C<"Satellite">, C<"Standard">

=head2 B<REQUIRED> Width => Int

Specifies the width of the map image.



=head2 Zoom => Num

Specifies the zoom level of the map image.

Cannot be used with C<Radius>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStaticMap in L<Paws::GeoMaps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

