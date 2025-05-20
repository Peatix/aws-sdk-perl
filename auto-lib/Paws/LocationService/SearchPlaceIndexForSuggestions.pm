
package Paws::LocationService::SearchPlaceIndexForSuggestions;
  use Moose;
  has BiasPosition => (is => 'ro', isa => 'ArrayRef[Num]');
  has FilterBBox => (is => 'ro', isa => 'ArrayRef[Num]');
  has FilterCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FilterCountries => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchPlaceIndexForSuggestions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}/search/suggestions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::SearchPlaceIndexForSuggestionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForSuggestions - Arguments for method SearchPlaceIndexForSuggestions on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchPlaceIndexForSuggestions on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method SearchPlaceIndexForSuggestions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchPlaceIndexForSuggestions.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $SearchPlaceIndexForSuggestionsResponse =
      $geo->SearchPlaceIndexForSuggestions(
      IndexName        => 'MyResourceName',
      Text             => 'MySearchPlaceIndexForSuggestionsRequestTextString',
      BiasPosition     => [ 1, ... ],    # OPTIONAL
      FilterBBox       => [ 1, ... ],    # OPTIONAL
      FilterCategories => [
        'MyPlaceCategory', ...           # max: 35
      ],    # OPTIONAL
      FilterCountries => [
        'MyCountryCode3', ...    # min: 3, max: 3
      ],    # OPTIONAL
      Key        => 'MyApiKey',         # OPTIONAL
      Language   => 'MyLanguageTag',    # OPTIONAL
      MaxResults => 1,                  # OPTIONAL
      );

    # Results:
    my $Results = $SearchPlaceIndexForSuggestionsResponse->Results;
    my $Summary = $SearchPlaceIndexForSuggestionsResponse->Summary;

# Returns a L<Paws::LocationService::SearchPlaceIndexForSuggestionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/SearchPlaceIndexForSuggestions>

=head1 ATTRIBUTES


=head2 BiasPosition => ArrayRef[Num]

An optional parameter that indicates a preference for place suggestions
that are closer to a specified position.

If provided, this parameter must contain a pair of numbers. The first
number represents the X coordinate, or longitude; the second number
represents the Y coordinate, or latitude.

For example, C<[-123.1174, 49.2847]> represents the position with
longitude C<-123.1174> and latitude C<49.2847>.

C<BiasPosition> and C<FilterBBox> are mutually exclusive. Specifying
both options results in an error.



=head2 FilterBBox => ArrayRef[Num]

An optional parameter that limits the search results by returning only
suggestions within a specified bounding box.

If provided, this parameter must contain a total of four consecutive
numbers in two pairs. The first pair of numbers represents the X and Y
coordinates (longitude and latitude, respectively) of the southwest
corner of the bounding box; the second pair of numbers represents the X
and Y coordinates (longitude and latitude, respectively) of the
northeast corner of the bounding box.

For example, C<[-12.7935, -37.4835, -12.0684, -36.9542]> represents a
bounding box where the southwest corner has longitude C<-12.7935> and
latitude C<-37.4835>, and the northeast corner has longitude
C<-12.0684> and latitude C<-36.9542>.

C<FilterBBox> and C<BiasPosition> are mutually exclusive. Specifying
both options results in an error.



=head2 FilterCategories => ArrayRef[Str|Undef]

A list of one or more Amazon Location categories to filter the returned
places. If you include more than one category, the results will include
results that match I<any> of the categories listed.

For more information about using categories, including a list of Amazon
Location categories, see Categories and filtering
(https://docs.aws.amazon.com/location/latest/developerguide/category-filtering.html),
in the I<Amazon Location Service Developer Guide>.



=head2 FilterCountries => ArrayRef[Str|Undef]

An optional parameter that limits the search results by returning only
suggestions within the provided list of countries.

=over

=item *

Use the ISO 3166 (https://www.iso.org/iso-3166-country-codes.html)
3-digit country code. For example, Australia uses three upper-case
characters: C<AUS>.

=back




=head2 B<REQUIRED> IndexName => Str

The name of the place index resource you want to use for the search.



=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 Language => Str

The preferred language used to return results. The value must be a
valid BCP 47 (https://tools.ietf.org/search/bcp47) language tag, for
example, C<en> for English.

This setting affects the languages used in the results. If no language
is specified, or not supported for a particular result, the partner
automatically chooses a language for the result.

For an example, we'll use the Greek language. You search for C<Athens,
Gr> to get suggestions with the C<language> parameter set to C<en>. The
results found will most likely be returned as C<Athens, Greece>.

If you set the C<language> parameter to C<el>, for Greek, then the
result found will more likely be returned as
C<E<Alpha>E<theta>E<nu>E<alpha>,
E<Epsilon>E<lambda>E<lambda>E<delta>E<alpha>>.

If the data provider does not have a value for Greek, the result will
be in a language that the provider does support.



=head2 MaxResults => Int

An optional parameter. The maximum number of results returned per
request.

The default: C<5>



=head2 B<REQUIRED> Text => Str

The free-form partial text to use to generate place suggestions. For
example, C<eiffel tow>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchPlaceIndexForSuggestions in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

