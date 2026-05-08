package Paws::GeoPlaces;
  use Moose;
  sub service { 'geo-places' }
  sub signing_name { 'geo-places' }
  sub version { '2020-11-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub Autocomplete {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::Autocomplete', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Geocode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::Geocode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::GetPlace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReverseGeocode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::ReverseGeocode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchNearby {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::SearchNearby', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::SearchText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Suggest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoPlaces::Suggest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/Autocomplete Geocode GetPlace ReverseGeocode SearchNearby SearchText Suggest / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces - Perl Interface to AWS Amazon Location Service Places V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GeoPlaces');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Places API enables powerful location search and geocoding
capabilities for your applications, offering global coverage with rich,
detailed information. Key features include:

=over

=item *

Forward and reverse geocoding for addresses and coordinates

=item *

Comprehensive place searches with detailed information, including:

=over

=item *

Business names and addresses

=item *

Contact information

=item *

Hours of operation

=item *

POI (Points of Interest) categories

=item *

Food types for restaurants

=item *

Chain affiliation for relevant businesses

=back

=item *

Global data coverage with a wide range of POI categories

=item *

Regular data updates to ensure accuracy and relevance

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19>


=head1 METHODS

=head2 Autocomplete

=over

=item QueryText => Str

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [BiasPosition => ArrayRef[Num]]

=item [Filter => L<Paws::GeoPlaces::AutocompleteFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [PoliticalView => Str]

=item [PostalCodeMode => Str]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::Autocomplete>

Returns: a L<Paws::GeoPlaces::AutocompleteResponse> instance

The autocomplete operation speeds up and increases the accuracy of
entering addresses by providing a list of address candidates matching a
partially entered address. Results are sorted from most to least
matching. Filtering and biasing can be used to increase the relevance
of the results if additional search context is known


=head2 Geocode

=over

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [BiasPosition => ArrayRef[Num]]

=item [Filter => L<Paws::GeoPlaces::GeocodeFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [PoliticalView => Str]

=item [QueryComponents => L<Paws::GeoPlaces::GeocodeQueryComponents>]

=item [QueryText => Str]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::Geocode>

Returns: a L<Paws::GeoPlaces::GeocodeResponse> instance

The C<Geocode> action allows you to obtain coordinates, addresses, and
other information about places.


=head2 GetPlace

=over

=item PlaceId => Str

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [PoliticalView => Str]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::GetPlace>

Returns: a L<Paws::GeoPlaces::GetPlaceResponse> instance

Finds a place by its unique ID. A C<PlaceId> is returned by other place
operations.


=head2 ReverseGeocode

=over

=item QueryPosition => ArrayRef[Num]

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::GeoPlaces::ReverseGeocodeFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [PoliticalView => Str]

=item [QueryRadius => Int]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::ReverseGeocode>

Returns: a L<Paws::GeoPlaces::ReverseGeocodeResponse> instance

The C<ReverseGeocode> operation allows you to retrieve addresses and
place information from coordinates.


=head2 SearchNearby

=over

=item QueryPosition => ArrayRef[Num]

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::GeoPlaces::SearchNearbyFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoliticalView => Str]

=item [QueryRadius => Int]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::SearchNearby>

Returns: a L<Paws::GeoPlaces::SearchNearbyResponse> instance

Search nearby a specified location.


=head2 SearchText

=over

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [BiasPosition => ArrayRef[Num]]

=item [Filter => L<Paws::GeoPlaces::SearchTextFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoliticalView => Str]

=item [QueryId => Str]

=item [QueryText => Str]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::SearchText>

Returns: a L<Paws::GeoPlaces::SearchTextResponse> instance

Use the C<SearchText> operation to search for geocode and place
information. You can then complete a follow-up query suggested from the
C<Suggest> API via a query id.


=head2 Suggest

=over

=item QueryText => Str

=item [AdditionalFeatures => ArrayRef[Str|Undef]]

=item [BiasPosition => ArrayRef[Num]]

=item [Filter => L<Paws::GeoPlaces::SuggestFilter>]

=item [IntendedUse => Str]

=item [Key => Str]

=item [Language => Str]

=item [MaxQueryRefinements => Int]

=item [MaxResults => Int]

=item [PoliticalView => Str]


=back

Each argument is described in detail in: L<Paws::GeoPlaces::Suggest>

Returns: a L<Paws::GeoPlaces::SuggestResponse> instance

The C<Suggest> operation finds addresses or place candidates based on
incomplete or misspelled queries. You then select the best query to
submit based on the returned results.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

