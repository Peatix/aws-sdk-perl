
package Paws::CloudFrontKeyValueStore::PutKeyResponse;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag', required => 1);
  has ItemCount => (is => 'ro', isa => 'Int', required => 1);
  has TotalSizeInBytes => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::PutKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ETag => Str

The current version identifier of the Key Value Store after the
successful put.


=head2 B<REQUIRED> ItemCount => Int

Number of key value pairs in the Key Value Store after the successful
put.


=head2 B<REQUIRED> TotalSizeInBytes => Int

Total size of the Key Value Store after the successful put, in bytes.


=head2 _request_id => Str


=cut

