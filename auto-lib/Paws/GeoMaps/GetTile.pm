
package Paws::GeoMaps::GetTile;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Tileset => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Tileset', required => 1);
  has X => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'X', required => 1);
  has Y => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Y', required => 1);
  has Z => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Z', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tiles/{Tileset}/{Z}/{X}/{Y}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoMaps::GetTileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetTile - Arguments for method GetTile on L<Paws::GeoMaps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTile on the
L<Amazon Location Service Maps V2|Paws::GeoMaps> service. Use the attributes of this class
as arguments to method GetTile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTile.

=head1 SYNOPSIS

    my $geo-maps = Paws->service('GeoMaps');
    my $GetTileResponse = $geo -maps->GetTile(
      Tileset => 'MyTileset',
      X       => 'MyGetTileRequestXString',
      Y       => 'MyGetTileRequestYString',
      Z       => 'MyGetTileRequestZString',
      Key     => 'MyApiKey',                  # OPTIONAL
    );

    # Results:
    my $Blob          = $GetTileResponse->Blob;
    my $CacheControl  = $GetTileResponse->CacheControl;
    my $ContentType   = $GetTileResponse->ContentType;
    my $ETag          = $GetTileResponse->ETag;
    my $PricingBucket = $GetTileResponse->PricingBucket;

    # Returns a L<Paws::GeoMaps::GetTileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps/GetTile>

=head1 ATTRIBUTES


=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 B<REQUIRED> Tileset => Str

Specifies the desired tile set.

Valid Values: C<raster.satellite | vector.basemap>



=head2 B<REQUIRED> X => Str

The X axis value for the map tile. Must be between 0 and 19.



=head2 B<REQUIRED> Y => Str

The Y axis value for the map tile.



=head2 B<REQUIRED> Z => Str

The zoom value for the map tile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTile in L<Paws::GeoMaps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

