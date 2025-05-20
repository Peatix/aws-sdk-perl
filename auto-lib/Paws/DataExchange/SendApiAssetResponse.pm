
package Paws::DataExchange::SendApiAssetResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has ResponseHeaders => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::SendApiAssetResponse

=head1 ATTRIBUTES


=head2 Body => Str

The response body from the underlying API tracked by the API asset.


=head2 ResponseHeaders => L<Paws::DataExchange::MapOf__string>

The response headers from the underlying API tracked by the API asset.


=head2 _request_id => Str


=cut

