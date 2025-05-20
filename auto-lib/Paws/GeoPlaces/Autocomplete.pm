
package Paws::GeoPlaces::Autocomplete;
  use Moose;
  has AdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BiasPosition => (is => 'ro', isa => 'ArrayRef[Num]');
  has Filter => (is => 'ro', isa => 'Paws::GeoPlaces::AutocompleteFilter');
  has IntendedUse => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has PoliticalView => (is => 'ro', isa => 'Str');
  has PostalCodeMode => (is => 'ro', isa => 'Str');
  has QueryText => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Autocomplete');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/autocomplete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoPlaces::AutocompleteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::Autocomplete - Arguments for method Autocomplete on L<Paws::GeoPlaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Autocomplete on the
L<Amazon Location Service Places V2|Paws::GeoPlaces> service. Use the attributes of this class
as arguments to method Autocomplete.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Autocomplete.

=head1 SYNOPSIS

    my $geo-places = Paws->service('GeoPlaces');
    my $AutocompleteResponse = $geo -places->Autocomplete(
      QueryText          => 'MyAutocompleteRequestQueryTextString',
      AdditionalFeatures => [
        'Core', ...    # values: Core
      ],    # OPTIONAL
      BiasPosition => [ 1, ... ],    # OPTIONAL
      Filter       => {
        BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
        Circle      => {
          Center => [ 1, ... ],       # min: 2, max: 2
          Radius => 1,                # min: 1, max: 21000000

        },    # OPTIONAL
        IncludeCountries => [
          'MyCountryCode', ...    # min: 2, max: 3
        ],    # min: 1, max: 100; OPTIONAL
        IncludePlaceTypes => [
          'Locality', ...    # values: Locality, PostalCode
        ],    # min: 1, max: 2; OPTIONAL
      },    # OPTIONAL
      IntendedUse    => 'SingleUse',                    # OPTIONAL
      Key            => 'MyApiKey',                     # OPTIONAL
      Language       => 'MyLanguageTag',                # OPTIONAL
      MaxResults     => 1,                              # OPTIONAL
      PoliticalView  => 'MyCountryCode',                # OPTIONAL
      PostalCodeMode => 'MergeAllSpannedLocalities',    # OPTIONAL
    );

    # Results:
    my $PricingBucket = $AutocompleteResponse->PricingBucket;
    my $ResultItems   = $AutocompleteResponse->ResultItems;

    # Returns a L<Paws::GeoPlaces::AutocompleteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-places/Autocomplete>

=head1 ATTRIBUTES


=head2 AdditionalFeatures => ArrayRef[Str|Undef]

A list of optional additional parameters that can be requested for each
result.



=head2 BiasPosition => ArrayRef[Num]

The position in longitude and latitude that the results should be close
to. Typically, place results returned are ranked higher the closer they
are to this position. Stored in C<[lng, lat]> and in the WSG84 format.

The fields C<BiasPosition>, C<FilterBoundingBox>, and C<FilterCircle>
are mutually exclusive.



=head2 Filter => L<Paws::GeoPlaces::AutocompleteFilter>

A structure which contains a set of inclusion/exclusion properties that
results must posses in order to be returned as a result.



=head2 IntendedUse => Str

Indicates if the results will be stored. Defaults to C<SingleUse>, if
left empty.

Valid values are: C<"SingleUse">

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



=head2 PostalCodeMode => Str

The C<PostalCodeMode> affects how postal code results are returned. If
a postal code spans multiple localities and this value is empty,
partial district or locality information may be returned under a single
postal code result entry. If it's populated with the value
C<cityLookup>, all cities in that postal code are returned.

Valid values are: C<"MergeAllSpannedLocalities">, C<"EnumerateSpannedLocalities">

=head2 B<REQUIRED> QueryText => Str

The free-form text query to match addresses against. This is usually a
partially typed address from an end user in an address box or form.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Autocomplete in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

