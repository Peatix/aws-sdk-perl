
package Paws::GeoMaps::GetTileResponse;
  use Moose;
  has Blob => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Blob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoMaps::GetTileResponse

=head1 ATTRIBUTES


=head2 Blob => Str

The blob represents a vector tile in C<mvt> or a raster tile in an
image format.


=head2 CacheControl => Str

Header that instructs caching configuration for the client.


=head2 ContentType => Str

Header that represents the format of the response. The response returns
the following as the HTTP body.


=head2 ETag => Str

The pricing bucket for which the request is charged at.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the request is charged at.


=head2 _request_id => Str


=cut

