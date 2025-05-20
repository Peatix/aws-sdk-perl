
package Paws::GeoMaps::GetGlyphs;
  use Moose;
  has FontStack => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontStack', required => 1);
  has FontUnicodeRange => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontUnicodeRange', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGlyphs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/glyphs/{FontStack}/{FontUnicodeRange}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoMaps::GetGlyphsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetGlyphs - Arguments for method GetGlyphs on L<Paws::GeoMaps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGlyphs on the
L<Amazon Location Service Maps V2|Paws::GeoMaps> service. Use the attributes of this class
as arguments to method GetGlyphs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGlyphs.

=head1 SYNOPSIS

    my $geo-maps = Paws->service('GeoMaps');
    my $GetGlyphsResponse = $geo -maps->GetGlyphs(
      FontStack        => 'MyGetGlyphsRequestFontStackString',
      FontUnicodeRange => 'MyGetGlyphsRequestFontUnicodeRangeString',

    );

    # Results:
    my $Blob         = $GetGlyphsResponse->Blob;
    my $CacheControl = $GetGlyphsResponse->CacheControl;
    my $ContentType  = $GetGlyphsResponse->ContentType;
    my $ETag         = $GetGlyphsResponse->ETag;

    # Returns a L<Paws::GeoMaps::GetGlyphsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps/GetGlyphs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FontStack => Str

Name of the C<FontStack> to retrieve.

Example: C<Amazon Ember Bold,Noto Sans Bold>.

The supported font stacks are as follows:

=over

=item *

Amazon Ember Bold

=item *

Amazon Ember Bold Italic

=item *

Amazon Ember Bold,Noto Sans Bold

=item *

Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold

=item *

Amazon Ember Condensed RC BdItalic

=item *

Amazon Ember Condensed RC Bold

=item *

Amazon Ember Condensed RC Bold Italic

=item *

Amazon Ember Condensed RC Bold,Noto Sans Bold

=item *

Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic
Condensed Bold

=item *

Amazon Ember Condensed RC Light

=item *

Amazon Ember Condensed RC Light Italic

=item *

Amazon Ember Condensed RC LtItalic

=item *

Amazon Ember Condensed RC Regular

=item *

Amazon Ember Condensed RC Regular Italic

=item *

Amazon Ember Condensed RC Regular,Noto Sans Regular

=item *

Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic
Condensed Regular

=item *

Amazon Ember Condensed RC RgItalic

=item *

Amazon Ember Condensed RC ThItalic

=item *

Amazon Ember Condensed RC Thin

=item *

Amazon Ember Condensed RC Thin Italic

=item *

Amazon Ember Heavy

=item *

Amazon Ember Heavy Italic

=item *

Amazon Ember Light

=item *

Amazon Ember Light Italic

=item *

Amazon Ember Medium

=item *

Amazon Ember Medium Italic

=item *

Amazon Ember Medium,Noto Sans Medium

=item *

Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium

=item *

Amazon Ember Regular

=item *

Amazon Ember Regular Italic

=item *

Amazon Ember Regular Italic,Noto Sans Italic

=item *

Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic Regular

=item *

Amazon Ember Regular,Noto Sans Regular

=item *

Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular

=item *

Amazon Ember Thin

=item *

Amazon Ember Thin Italic

=item *

AmazonEmberCdRC_Bd

=item *

AmazonEmberCdRC_BdIt

=item *

AmazonEmberCdRC_Lt

=item *

AmazonEmberCdRC_LtIt

=item *

AmazonEmberCdRC_Rg

=item *

AmazonEmberCdRC_RgIt

=item *

AmazonEmberCdRC_Th

=item *

AmazonEmberCdRC_ThIt

=item *

AmazonEmber_Bd

=item *

AmazonEmber_BdIt

=item *

AmazonEmber_He

=item *

AmazonEmber_HeIt

=item *

AmazonEmber_Lt

=item *

AmazonEmber_LtIt

=item *

AmazonEmber_Md

=item *

AmazonEmber_MdIt

=item *

AmazonEmber_Rg

=item *

AmazonEmber_RgIt

=item *

AmazonEmber_Th

=item *

AmazonEmber_ThIt

=item *

Noto Sans Black

=item *

Noto Sans Black Italic

=item *

Noto Sans Bold

=item *

Noto Sans Bold Italic

=item *

Noto Sans Extra Bold

=item *

Noto Sans Extra Bold Italic

=item *

Noto Sans Extra Light

=item *

Noto Sans Extra Light Italic

=item *

Noto Sans Italic

=item *

Noto Sans Light

=item *

Noto Sans Light Italic

=item *

Noto Sans Medium

=item *

Noto Sans Medium Italic

=item *

Noto Sans Regular

=item *

Noto Sans Semi Bold

=item *

Noto Sans Semi Bold Italic

=item *

Noto Sans Thin

=item *

Noto Sans Thin Italic

=item *

NotoSans-Bold

=item *

NotoSans-Italic

=item *

NotoSans-Medium

=item *

NotoSans-Regular

=item *

Open Sans Regular,Arial Unicode MS Regular

=back




=head2 B<REQUIRED> FontUnicodeRange => Str

A Unicode range of characters to download glyphs for. This must be
aligned to multiples of 256.

Example: C<0-255.pdf>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGlyphs in L<Paws::GeoMaps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

