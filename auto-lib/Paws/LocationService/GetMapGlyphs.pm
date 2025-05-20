
package Paws::LocationService::GetMapGlyphs;
  use Moose;
  has FontStack => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontStack', required => 1);
  has FontUnicodeRange => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontUnicodeRange', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapGlyphs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetMapGlyphsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapGlyphs - Arguments for method GetMapGlyphs on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapGlyphs on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetMapGlyphs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapGlyphs.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetMapGlyphsResponse = $geo->GetMapGlyphs(
      FontStack        => 'MyString',
      FontUnicodeRange => 'MyGetMapGlyphsRequestFontUnicodeRangeString',
      MapName          => 'MyResourceName',
      Key              => 'MyApiKey',    # OPTIONAL
    );

    # Results:
    my $Blob         = $GetMapGlyphsResponse->Blob;
    my $CacheControl = $GetMapGlyphsResponse->CacheControl;
    my $ContentType  = $GetMapGlyphsResponse->ContentType;

    # Returns a L<Paws::LocationService::GetMapGlyphsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetMapGlyphs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FontStack => Str

A comma-separated list of fonts to load glyphs from in order of
preference. For example, C<Noto Sans Regular, Arial Unicode>.

Valid font stacks for Esri
(https://docs.aws.amazon.com/location/latest/developerguide/esri.html)
styles:

=over

=item *

VectorEsriDarkGrayCanvas E<ndash> C<Ubuntu Medium Italic> | C<Ubuntu
Medium> | C<Ubuntu Italic> | C<Ubuntu Regular> | C<Ubuntu Bold>

=item *

VectorEsriLightGrayCanvas E<ndash> C<Ubuntu Italic> | C<Ubuntu Regular>
| C<Ubuntu Light> | C<Ubuntu Bold>

=item *

VectorEsriTopographic E<ndash> C<Noto Sans Italic> | C<Noto Sans
Regular> | C<Noto Sans Bold> | C<Noto Serif Regular> | C<Roboto
Condensed Light Italic>

=item *

VectorEsriStreets E<ndash> C<Arial Regular> | C<Arial Italic> | C<Arial
Bold>

=item *

VectorEsriNavigation E<ndash> C<Arial Regular> | C<Arial Italic> |
C<Arial Bold>

=back

Valid font stacks for HERE Technologies
(https://docs.aws.amazon.com/location/latest/developerguide/HERE.html)
styles:

=over

=item *

VectorHereContrast E<ndash> C<Fira GO Regular> | C<Fira GO Bold>

=item *

VectorHereExplore, VectorHereExploreTruck, HybridHereExploreSatellite
E<ndash> C<Fira GO Italic> | C<Fira GO Map> | C<Fira GO Map Bold> |
C<Noto Sans CJK JP Bold> | C<Noto Sans CJK JP Light> | C<Noto Sans CJK
JP Regular>

=back

Valid font stacks for GrabMaps
(https://docs.aws.amazon.com/location/latest/developerguide/grab.html)
styles:

=over

=item *

VectorGrabStandardLight, VectorGrabStandardDark E<ndash> C<Noto Sans
Regular> | C<Noto Sans Medium> | C<Noto Sans Bold>

=back

Valid font stacks for Open Data
(https://docs.aws.amazon.com/location/latest/developerguide/open-data.html)
styles:

=over

=item *

VectorOpenDataStandardLight, VectorOpenDataStandardDark,
VectorOpenDataVisualizationLight, VectorOpenDataVisualizationDark
E<ndash> C<Amazon Ember Regular,Noto Sans Regular> | C<Amazon Ember
Bold,Noto Sans Bold> | C<Amazon Ember Medium,Noto Sans Medium> |
C<Amazon Ember Regular Italic,Noto Sans Italic> | C<Amazon Ember
Condensed RC Regular,Noto Sans Regular> | C<Amazon Ember Condensed RC
Bold,Noto Sans Bold> | C<Amazon Ember Regular,Noto Sans Regular,Noto
Sans Arabic Regular> | C<Amazon Ember Condensed RC Bold,Noto Sans
Bold,Noto Sans Arabic Condensed Bold> | C<Amazon Ember Bold,Noto Sans
Bold,Noto Sans Arabic Bold> | C<Amazon Ember Regular Italic,Noto Sans
Italic,Noto Sans Arabic Regular> | C<Amazon Ember Condensed RC
Regular,Noto Sans Regular,Noto Sans Arabic Condensed Regular> |
C<Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium>

=back

The fonts used by the Open Data map styles are combined fonts that use
C<Amazon Ember> for most glyphs but C<Noto Sans> for glyphs unsupported
by C<Amazon Ember>.



=head2 B<REQUIRED> FontUnicodeRange => Str

A Unicode range of characters to download glyphs for. Each response
will contain 256 characters. For example, 0E<ndash>255 includes all
characters from range C<U+0000> to C<00FF>. Must be aligned to
multiples of 256.



=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 B<REQUIRED> MapName => Str

The map resource associated with the glyph le.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapGlyphs in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

