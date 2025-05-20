
package Paws::LocationService::GetPlace;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'language');
  has PlaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}/places/{PlaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetPlaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetPlace - Arguments for method GetPlace on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlace on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetPlace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlace.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetPlaceResponse = $geo->GetPlace(
      IndexName => 'MyResourceName',
      PlaceId   => 'MyPlaceId',
      Key       => 'MyApiKey',         # OPTIONAL
      Language  => 'MyLanguageTag',    # OPTIONAL
    );

    # Results:
    my $Place = $GetPlaceResponse->Place;

    # Returns a L<Paws::LocationService::GetPlaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetPlace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The name of the place index resource that you want to use for the
search.



=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 Language => Str

The preferred language used to return results. The value must be a
valid BCP 47 (https://tools.ietf.org/search/bcp47) language tag, for
example, C<en> for English.

This setting affects the languages used in the results, but not the
results themselves. If no language is specified, or not supported for a
particular result, the partner automatically chooses a language for the
result.

For an example, we'll use the Greek language. You search for a location
around Athens, Greece, with the C<language> parameter set to C<en>. The
C<city> in the results will most likely be returned as C<Athens>.

If you set the C<language> parameter to C<el>, for Greek, then the
C<city> in the results will more likely be returned as
C<E<Alpha>E<theta>E<nu>E<alpha>>.

If the data provider does not have a value for Greek, the result will
be in a language that the provider does support.



=head2 B<REQUIRED> PlaceId => Str

The identifier of the place to find.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlace in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

