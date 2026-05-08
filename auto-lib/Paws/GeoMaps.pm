package Paws::GeoMaps;
  use Moose;
  sub service { 'geo-maps' }
  sub signing_name { 'geo-maps' }
  sub version { '2020-11-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetGlyphs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoMaps::GetGlyphs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSprites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoMaps::GetSprites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStaticMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoMaps::GetStaticMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStyleDescriptor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoMaps::GetStyleDescriptor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoMaps::GetTile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetGlyphs GetSprites GetStaticMap GetStyleDescriptor GetTile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps - Perl Interface to AWS Amazon Location Service Maps V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GeoMaps');
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

Integrate high-quality base map data into your applications using
MapLibre (https://maplibre.org). Capabilities include:

=over

=item *

Access to comprehensive base map data, allowing you to tailor the map
display to your specific needs.

=item *

Multiple pre-designed map styles suited for various application types,
such as navigation, logistics, or data visualization.

=item *

Generation of static map images for scenarios where interactive maps
aren't suitable, such as:

=over

=item *

Embedding in emails or documents

=item *

Displaying in low-bandwidth environments

=item *

Creating printable maps

=item *

Enhancing application performance by reducing client-side rendering

=back

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19>


=head1 METHODS

=head2 GetGlyphs

=over

=item FontStack => Str

=item FontUnicodeRange => Str


=back

Each argument is described in detail in: L<Paws::GeoMaps::GetGlyphs>

Returns: a L<Paws::GeoMaps::GetGlyphsResponse> instance

C<GetGlyphs> returns the map's glyphs.


=head2 GetSprites

=over

=item ColorScheme => Str

=item FileName => Str

=item Style => Str

=item Variant => Str


=back

Each argument is described in detail in: L<Paws::GeoMaps::GetSprites>

Returns: a L<Paws::GeoMaps::GetSpritesResponse> instance

C<GetSprites> returns the map's sprites.


=head2 GetStaticMap

=over

=item FileName => Str

=item Height => Int

=item Width => Int

=item [BoundedPositions => Str]

=item [BoundingBox => Str]

=item [Center => Str]

=item [ColorScheme => Str]

=item [CompactOverlay => Str]

=item [CropLabels => Bool]

=item [GeoJsonOverlay => Str]

=item [Key => Str]

=item [LabelSize => Str]

=item [Language => Str]

=item [Padding => Int]

=item [PointsOfInterests => Str]

=item [PoliticalView => Str]

=item [Radius => Int]

=item [ScaleBarUnit => Str]

=item [Style => Str]

=item [Zoom => Num]


=back

Each argument is described in detail in: L<Paws::GeoMaps::GetStaticMap>

Returns: a L<Paws::GeoMaps::GetStaticMapResponse> instance

C<GetStaticMap> provides high-quality static map images with
customizable options. You can modify the map's appearance and overlay
additional information. It's an ideal solution for applications
requiring tailored static map snapshots.


=head2 GetStyleDescriptor

=over

=item Style => Str

=item [ColorScheme => Str]

=item [Key => Str]

=item [PoliticalView => Str]


=back

Each argument is described in detail in: L<Paws::GeoMaps::GetStyleDescriptor>

Returns: a L<Paws::GeoMaps::GetStyleDescriptorResponse> instance

C<GetStyleDescriptor> returns information about the style.


=head2 GetTile

=over

=item Tileset => Str

=item X => Str

=item Y => Str

=item Z => Str

=item [Key => Str]


=back

Each argument is described in detail in: L<Paws::GeoMaps::GetTile>

Returns: a L<Paws::GeoMaps::GetTileResponse> instance

C<GetTile> returns a tile. Map tiles are used by clients to render a
map. they're addressed using a grid arrangement with an X coordinate, Y
coordinate, and Z (zoom) level.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

