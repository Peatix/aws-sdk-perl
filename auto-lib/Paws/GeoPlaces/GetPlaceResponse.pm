
package Paws::GeoPlaces::GetPlaceResponse;
  use Moose;
  has AccessPoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::AccessPoint]');
  has AccessRestrictions => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::AccessRestriction]');
  has Address => (is => 'ro', isa => 'Paws::GeoPlaces::Address');
  has AddressNumberCorrected => (is => 'ro', isa => 'Bool');
  has BusinessChains => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::BusinessChain]');
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::Category]');
  has Contacts => (is => 'ro', isa => 'Paws::GeoPlaces::Contacts');
  has FoodTypes => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::FoodType]');
  has MapView => (is => 'ro', isa => 'ArrayRef[Num]');
  has OpeningHours => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::OpeningHours]');
  has Phonemes => (is => 'ro', isa => 'Paws::GeoPlaces::PhonemeDetails');
  has PlaceId => (is => 'ro', isa => 'Str', required => 1);
  has PlaceType => (is => 'ro', isa => 'Str', required => 1);
  has PoliticalView => (is => 'ro', isa => 'Str');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]');
  has PostalCodeDetails => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PostalCodeDetails]');
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has TimeZone => (is => 'ro', isa => 'Paws::GeoPlaces::TimeZone');
  has Title => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::GetPlaceResponse

=head1 ATTRIBUTES


=head2 AccessPoints => ArrayRef[L<Paws::GeoPlaces::AccessPoint>]

Position of the access point in C<(lng,lat)>.


=head2 AccessRestrictions => ArrayRef[L<Paws::GeoPlaces::AccessRestriction>]

Indicates known access restrictions on a vehicle access point. The
index correlates to an access point and indicates if access through
this point has some form of restriction.


=head2 Address => L<Paws::GeoPlaces::Address>

The place's address.


=head2 AddressNumberCorrected => Bool

Boolean indicating if the address provided has been corrected.


=head2 BusinessChains => ArrayRef[L<Paws::GeoPlaces::BusinessChain>]

The Business Chains associated with the place.


=head2 Categories => ArrayRef[L<Paws::GeoPlaces::Category>]

Categories of results that results must belong to.


=head2 Contacts => L<Paws::GeoPlaces::Contacts>

List of potential contact methods for the result/place.


=head2 FoodTypes => ArrayRef[L<Paws::GeoPlaces::FoodType>]

List of food types offered by this result.


=head2 MapView => ArrayRef[Num]

The bounding box enclosing the geometric shape (area or line) that an
individual result covers.

The bounding box formed is defined as a set of four coordinates:
C<[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]>


=head2 OpeningHours => ArrayRef[L<Paws::GeoPlaces::OpeningHours>]

List of opening hours objects.


=head2 Phonemes => L<Paws::GeoPlaces::PhonemeDetails>

How the various components of the result's address are pronounced in
various languages.


=head2 B<REQUIRED> PlaceId => Str

The C<PlaceId> of the place you wish to receive the information for.


=head2 B<REQUIRED> PlaceType => Str

A C<PlaceType> is a category that the result place must belong to.

Valid values are: C<"Country">, C<"Region">, C<"SubRegion">, C<"Locality">, C<"District">, C<"SubDistrict">, C<"PostalCode">, C<"Block">, C<"SubBlock">, C<"Intersection">, C<"Street">, C<"PointOfInterest">, C<"PointAddress">, C<"InterpolatedAddress">
=head2 PoliticalView => Str

The alpha-2 or alpha-3 character code for the political view of a
country. The political view applies to the results of the request to
represent unresolved territorial claims through the point of view of
the specified country.


=head2 Position => ArrayRef[Num]

The position, in longitude and latitude.


=head2 PostalCodeDetails => ArrayRef[L<Paws::GeoPlaces::PostalCodeDetails>]

Contains details about the postal code of the place/result.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.

For more inforamtion on pricing, please visit Amazon Location Service
Pricing (https://aws.amazon.com/location/pricing/).


=head2 TimeZone => L<Paws::GeoPlaces::TimeZone>

The time zone in which the place is located.


=head2 B<REQUIRED> Title => Str

The localized display name of this result item based on request
parameter C<language>.


=head2 _request_id => Str


=cut

