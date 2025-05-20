
package Paws::GeoPlaces::Geocode;
  use Moose;
  has AdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BiasPosition => (is => 'ro', isa => 'ArrayRef[Num]');
  has Filter => (is => 'ro', isa => 'Paws::GeoPlaces::GeocodeFilter');
  has IntendedUse => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has PoliticalView => (is => 'ro', isa => 'Str');
  has QueryComponents => (is => 'ro', isa => 'Paws::GeoPlaces::GeocodeQueryComponents');
  has QueryText => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Geocode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geocode');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoPlaces::GeocodeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::Geocode - Arguments for method Geocode on L<Paws::GeoPlaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Geocode on the
L<Amazon Location Service Places V2|Paws::GeoPlaces> service. Use the attributes of this class
as arguments to method Geocode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Geocode.

=head1 SYNOPSIS

    my $geo-places = Paws->service('GeoPlaces');
    my $GeocodeResponse = $geo -places->Geocode(
      AdditionalFeatures => [
        'TimeZone', ...    # values: TimeZone, Access
      ],    # OPTIONAL
      BiasPosition => [ 1, ... ],    # OPTIONAL
      Filter       => {
        IncludeCountries => [
          'MyCountryCode', ...       # min: 2, max: 3
        ],    # min: 1, max: 100; OPTIONAL
        IncludePlaceTypes => [
          'Locality',
          ... # values: Locality, PostalCode, Intersection, Street, PointAddress, InterpolatedAddress
        ],    # min: 1, max: 6; OPTIONAL
      },    # OPTIONAL
      IntendedUse     => 'SingleUse',        # OPTIONAL
      Key             => 'MyApiKey',         # OPTIONAL
      Language        => 'MyLanguageTag',    # OPTIONAL
      MaxResults      => 1,                  # OPTIONAL
      PoliticalView   => 'MyCountryCode',    # OPTIONAL
      QueryComponents => {
        AddressNumber => 'MyGeocodeQueryComponentsAddressNumberString'
        ,                                    # min: 1, max: 100; OPTIONAL
        Country =>
          'MyGeocodeQueryComponentsCountryString',  # min: 1, max: 100; OPTIONAL
        District =>
          'MyGeocodeQueryComponentsDistrictString', # min: 1, max: 100; OPTIONAL
        Locality =>
          'MyGeocodeQueryComponentsLocalityString', # min: 1, max: 100; OPTIONAL
        PostalCode => 'MyGeocodeQueryComponentsPostalCodeString'
        ,                                           # min: 1, max: 100; OPTIONAL
        Region =>
          'MyGeocodeQueryComponentsRegionString',   # min: 1, max: 100; OPTIONAL
        Street =>
          'MyGeocodeQueryComponentsStreetString',   # min: 1, max: 100; OPTIONAL
        SubRegion => 'MyGeocodeQueryComponentsSubRegionString'
        ,                                           # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      QueryText => 'MyGeocodeRequestQueryTextString',    # OPTIONAL
    );

    # Results:
    my $PricingBucket = $GeocodeResponse->PricingBucket;
    my $ResultItems   = $GeocodeResponse->ResultItems;

    # Returns a L<Paws::GeoPlaces::GeocodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-places/Geocode>

=head1 ATTRIBUTES


=head2 AdditionalFeatures => ArrayRef[Str|Undef]

A list of optional additional parameters, such as time zone, that can
be requested for each result.



=head2 BiasPosition => ArrayRef[Num]

The position, in longitude and latitude, that the results should be
close to. Typically, place results returned are ranked higher the
closer they are to this position. Stored in C<[lng, lat]> and in the
WSG84 format.

The fields C<BiasPosition>, C<FilterBoundingBox>, and C<FilterCircle>
are mutually exclusive.



=head2 Filter => L<Paws::GeoPlaces::GeocodeFilter>

A structure which contains a set of inclusion/exclusion properties that
results must posses in order to be returned as a result.



=head2 IntendedUse => Str

Indicates if the results will be stored. Defaults to C<SingleUse>, if
left empty.

Valid values are: C<"SingleUse">, C<"Storage">

=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 Language => Str

A list of BCP 47 (https://en.wikipedia.org/wiki/IETF_language_tag)
compliant language codes for the results to be rendered in. If there is
no data for the result in the requested language, data will be returned
in the default language for the entry.



=head2 MaxResults => Int

An optional limit for the number of results returned in a single call.



=head2 PoliticalView => Str

The alpha-2 or alpha-3 character code for the political view of a
country. The political view applies to the results of the request to
represent unresolved territorial claims through the point of view of
the specified country.



=head2 QueryComponents => L<Paws::GeoPlaces::GeocodeQueryComponents>





=head2 QueryText => Str

The free-form text query to match addresses against. This is usually a
partially typed address from an end user in an address box or form.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Geocode in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

