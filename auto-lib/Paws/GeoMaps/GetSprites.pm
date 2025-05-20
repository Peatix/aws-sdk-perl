
package Paws::GeoMaps::GetSprites;
  use Moose;
  has ColorScheme => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ColorScheme', required => 1);
  has FileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileName', required => 1);
  has Style => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Style', required => 1);
  has Variant => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Variant', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSprites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoMaps::GetSpritesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetSprites - Arguments for method GetSprites on L<Paws::GeoMaps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSprites on the
L<Amazon Location Service Maps V2|Paws::GeoMaps> service. Use the attributes of this class
as arguments to method GetSprites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSprites.

=head1 SYNOPSIS

    my $geo-maps = Paws->service('GeoMaps');
    my $GetSpritesResponse = $geo -maps->GetSprites(
      ColorScheme => 'Light',
      FileName    => 'MyGetSpritesRequestFileNameString',
      Style       => 'Standard',
      Variant     => 'Default',

    );

    # Results:
    my $Blob         = $GetSpritesResponse->Blob;
    my $CacheControl = $GetSpritesResponse->CacheControl;
    my $ContentType  = $GetSpritesResponse->ContentType;
    my $ETag         = $GetSpritesResponse->ETag;

    # Returns a L<Paws::GeoMaps::GetSpritesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps/GetSprites>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColorScheme => Str

Sets color tone for map such as dark and light for specific map styles.
It applies to only vector map styles such as Standard and Monochrome.

Example: C<Light>

Default value: C<Light>

Valid values for ColorScheme are case sensitive.

Valid values are: C<"Light">, C<"Dark">

=head2 B<REQUIRED> FileName => Str

C<Sprites> API: The name of the sprite le to retrieve, following
pattern C<sprites(@2x)?\.(png|json)>.

Example: C<sprites.png>



=head2 B<REQUIRED> Style => Str

Style specifies the desired map style for the C<Sprites> APIs.

Valid values are: C<"Standard">, C<"Monochrome">, C<"Hybrid">, C<"Satellite">

=head2 B<REQUIRED> Variant => Str

Optimizes map styles for specific use case or industry. You can choose
allowed variant only with Standard map style.

Example: C<Default>

Valid values for Variant are case sensitive.

Valid values are: C<"Default">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSprites in L<Paws::GeoMaps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

