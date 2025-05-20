
package Paws::LocationService::SearchPlaceIndexForPosition;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Language => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchPlaceIndexForPosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}/search/position');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::SearchPlaceIndexForPositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForPosition - Arguments for method SearchPlaceIndexForPosition on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchPlaceIndexForPosition on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method SearchPlaceIndexForPosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchPlaceIndexForPosition.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $SearchPlaceIndexForPositionResponse = $geo->SearchPlaceIndexForPosition(
      IndexName  => 'MyResourceName',
      Position   => [ 1, ... ],
      Key        => 'MyApiKey',         # OPTIONAL
      Language   => 'MyLanguageTag',    # OPTIONAL
      MaxResults => 1,                  # OPTIONAL
    );

    # Results:
    my $Results = $SearchPlaceIndexForPositionResponse->Results;
    my $Summary = $SearchPlaceIndexForPositionResponse->Summary;

# Returns a L<Paws::LocationService::SearchPlaceIndexForPositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/SearchPlaceIndexForPosition>

=head1 ATTRIBUTES


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



=head2 MaxResults => Int

An optional parameter. The maximum number of results returned per
request.

Default value: C<50>



=head2 B<REQUIRED> Position => ArrayRef[Num]

Specifies the longitude and latitude of the position to query.

This parameter must contain a pair of numbers. The first number
represents the X coordinate, or longitude; the second number represents
the Y coordinate, or latitude.

For example, C<[-123.1174, 49.2847]> represents a position with
longitude C<-123.1174> and latitude C<49.2847>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchPlaceIndexForPosition in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

