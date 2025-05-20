
package Paws::GeoMaps::GetStyleDescriptor;
  use Moose;
  has ColorScheme => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'color-scheme');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has PoliticalView => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'political-view');
  has Style => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Style', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStyleDescriptor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/styles/{Style}/descriptor');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoMaps::GetStyleDescriptorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetStyleDescriptor - Arguments for method GetStyleDescriptor on L<Paws::GeoMaps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStyleDescriptor on the
L<Amazon Location Service Maps V2|Paws::GeoMaps> service. Use the attributes of this class
as arguments to method GetStyleDescriptor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStyleDescriptor.

=head1 SYNOPSIS

    my $geo-maps = Paws->service('GeoMaps');
    my $GetStyleDescriptorResponse = $geo -maps->GetStyleDescriptor(
      Style         => 'Standard',
      ColorScheme   => 'Light',            # OPTIONAL
      Key           => 'MyApiKey',         # OPTIONAL
      PoliticalView => 'MyCountryCode',    # OPTIONAL
    );

    # Results:
    my $Blob         = $GetStyleDescriptorResponse->Blob;
    my $CacheControl = $GetStyleDescriptorResponse->CacheControl;
    my $ContentType  = $GetStyleDescriptorResponse->ContentType;
    my $ETag         = $GetStyleDescriptorResponse->ETag;

    # Returns a L<Paws::GeoMaps::GetStyleDescriptorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps/GetStyleDescriptor>

=head1 ATTRIBUTES


=head2 ColorScheme => Str

Sets color tone for map such as dark and light for specific map styles.
It applies to only vector map styles such as Standard and Monochrome.

Example: C<Light>

Default value: C<Light>

Valid values for ColorScheme are case sensitive.

Valid values are: C<"Light">, C<"Dark">

=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 PoliticalView => Str

Specifies the political view using ISO 3166-2 or ISO 3166-3 country
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




=head2 B<REQUIRED> Style => Str

Style specifies the desired map style.

Valid values are: C<"Standard">, C<"Monochrome">, C<"Hybrid">, C<"Satellite">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStyleDescriptor in L<Paws::GeoMaps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

