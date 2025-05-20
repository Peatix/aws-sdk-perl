
package Paws::GeoPlaces::GetPlace;
  use Moose;
  has AdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'additional-features');
  has IntendedUse => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'intended-use');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'language');
  has PlaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaceId', required => 1);
  has PoliticalView => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'political-view');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/place/{PlaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoPlaces::GetPlaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::GetPlace - Arguments for method GetPlace on L<Paws::GeoPlaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlace on the
L<Amazon Location Service Places V2|Paws::GeoPlaces> service. Use the attributes of this class
as arguments to method GetPlace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlace.

=head1 SYNOPSIS

    my $geo-places = Paws->service('GeoPlaces');
    my $GetPlaceResponse = $geo -places->GetPlace(
      PlaceId            => 'MyGetPlaceRequestPlaceIdString',
      AdditionalFeatures => [
        'TimeZone', ...    # values: TimeZone, Phonemes, Access, Contact
      ],    # OPTIONAL
      IntendedUse   => 'SingleUse',        # OPTIONAL
      Key           => 'MyApiKey',         # OPTIONAL
      Language      => 'MyLanguageTag',    # OPTIONAL
      PoliticalView => 'MyCountryCode',    # OPTIONAL
    );

    # Results:
    my $AccessPoints           = $GetPlaceResponse->AccessPoints;
    my $AccessRestrictions     = $GetPlaceResponse->AccessRestrictions;
    my $Address                = $GetPlaceResponse->Address;
    my $AddressNumberCorrected = $GetPlaceResponse->AddressNumberCorrected;
    my $BusinessChains         = $GetPlaceResponse->BusinessChains;
    my $Categories             = $GetPlaceResponse->Categories;
    my $Contacts               = $GetPlaceResponse->Contacts;
    my $FoodTypes              = $GetPlaceResponse->FoodTypes;
    my $MapView                = $GetPlaceResponse->MapView;
    my $OpeningHours           = $GetPlaceResponse->OpeningHours;
    my $Phonemes               = $GetPlaceResponse->Phonemes;
    my $PlaceId                = $GetPlaceResponse->PlaceId;
    my $PlaceType              = $GetPlaceResponse->PlaceType;
    my $PoliticalView          = $GetPlaceResponse->PoliticalView;
    my $Position               = $GetPlaceResponse->Position;
    my $PostalCodeDetails      = $GetPlaceResponse->PostalCodeDetails;
    my $PricingBucket          = $GetPlaceResponse->PricingBucket;
    my $TimeZone               = $GetPlaceResponse->TimeZone;
    my $Title                  = $GetPlaceResponse->Title;

    # Returns a L<Paws::GeoPlaces::GetPlaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-places/GetPlace>

=head1 ATTRIBUTES


=head2 AdditionalFeatures => ArrayRef[Str|Undef]

A list of optional additional parameters such as time zone that can be
requested for each result.



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



=head2 B<REQUIRED> PlaceId => Str

The C<PlaceId> of the place you wish to receive the information for.



=head2 PoliticalView => Str

The alpha-2 or alpha-3 character code for the political view of a
country. The political view applies to the results of the request to
represent unresolved territorial claims through the point of view of
the specified country.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlace in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

