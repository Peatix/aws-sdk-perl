
package Paws::GeoMaps::GetSpritesResponse;
  use Moose;
  has Blob => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Blob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetSpritesResponse

=head1 ATTRIBUTES


=head2 Blob => Str

The body of the sprite sheet or JSON offset file (image/png or
application/json, depending on input).


=head2 CacheControl => Str

Header that instructs caching configuration for the client.


=head2 ContentType => Str

Header that represents the format of the response. The response returns
the following as the HTTP body.


=head2 ETag => Str

The sprite's Etag.


=head2 _request_id => Str


=cut

