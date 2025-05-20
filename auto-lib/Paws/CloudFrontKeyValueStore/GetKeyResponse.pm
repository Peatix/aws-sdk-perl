
package Paws::CloudFrontKeyValueStore::GetKeyResponse;
  use Moose;
  has ItemCount => (is => 'ro', isa => 'Int', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has TotalSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::GetKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ItemCount => Int

Number of key value pairs in the Key Value Store.


=head2 B<REQUIRED> Key => Str

The key of the key value pair.


=head2 B<REQUIRED> TotalSizeInBytes => Int

Total size of the Key Value Store in bytes.


=head2 B<REQUIRED> Value => Str

The value of the key value pair.


=head2 _request_id => Str


=cut

