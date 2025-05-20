
package Paws::GeoPlaces::SearchNearby;
  use Moose;
  has AdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filter => (is => 'ro', isa => 'Paws::GeoPlaces::SearchNearbyFilter');
  has IntendedUse => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoliticalView => (is => 'ro', isa => 'Str');
  has QueryPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has QueryRadius => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchNearby');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-nearby');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoPlaces::SearchNearbyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::SearchNearby - Arguments for method SearchNearby on L<Paws::GeoPlaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchNearby on the
L<Amazon Location Service Places V2|Paws::GeoPlaces> service. Use the attributes of this class
as arguments to method SearchNearby.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchNearby.

=head1 SYNOPSIS

    my $geo-places = Paws->service('GeoPlaces');
    my $SearchNearbyResponse = $geo -places->SearchNearby(
      QueryPosition      => [ 1, ... ],
      AdditionalFeatures => [
        'TimeZone', ...    # values: TimeZone, Phonemes, Access, Contact
      ],    # OPTIONAL
      Filter => {
        BoundingBox           => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
        ExcludeBusinessChains => [
          'MyFilterBusinessChainListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
        ExcludeCategories => [
          'MyFilterCategoryListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
        ExcludeFoodTypes => [
          'MyFilterFoodTypeListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
        IncludeBusinessChains => [
          'MyFilterBusinessChainListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
        IncludeCategories => [
          'MyFilterCategoryListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
        IncludeCountries => [
          'MyCountryCode', ...    # min: 2, max: 3
        ],    # min: 1, max: 100; OPTIONAL
        IncludeFoodTypes => [
          'MyFilterFoodTypeListMemberString', ...    # min: 1, max: 100
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      IntendedUse   => 'SingleUse',        # OPTIONAL
      Key           => 'MyApiKey',         # OPTIONAL
      Language      => 'MyLanguageTag',    # OPTIONAL
      MaxResults    => 1,                  # OPTIONAL
      NextToken     => 'MyToken',          # OPTIONAL
      PoliticalView => 'MyCountryCode',    # OPTIONAL
      QueryRadius   => 1,                  # OPTIONAL
    );

    # Results:
    my $NextToken     = $SearchNearbyResponse->NextToken;
    my $PricingBucket = $SearchNearbyResponse->PricingBucket;
    my $ResultItems   = $SearchNearbyResponse->ResultItems;

    # Returns a L<Paws::GeoPlaces::SearchNearbyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-places/SearchNearby>

=head1 ATTRIBUTES


=head2 AdditionalFeatures => ArrayRef[Str|Undef]

A list of optional additional parameters, such as time zone, that can
be requested for each result.



=head2 Filter => L<Paws::GeoPlaces::SearchNearbyFilter>

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



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page.



=head2 PoliticalView => Str

The alpha-2 or alpha-3 character code for the political view of a
country. The political view applies to the results of the request to
represent unresolved territorial claims through the point of view of
the specified country.



=head2 B<REQUIRED> QueryPosition => ArrayRef[Num]

The position, in C<[lng, lat]> for which you are querying nearby
resultsfor. Results closer to the position will be ranked higher then
results further away from the position



=head2 QueryRadius => Int

The maximum distance in meters from the QueryPosition from which a
result will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchNearby in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

