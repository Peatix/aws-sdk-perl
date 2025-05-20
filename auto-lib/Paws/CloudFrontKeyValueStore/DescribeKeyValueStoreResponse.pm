
package Paws::CloudFrontKeyValueStore::DescribeKeyValueStoreResponse;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', required => 1);
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int', required => 1);
  has KvsARN => (is => 'ro', isa => 'Str', required => 1);
  has LastModified => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TotalSizeInBytes => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::DescribeKeyValueStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Created => Str

Date and time when the Key Value Store was created.


=head2 B<REQUIRED> ETag => Str

The version identifier for the current version of the Key Value Store.


=head2 FailureReason => Str

The reason for Key Value Store creation failure.


=head2 B<REQUIRED> ItemCount => Int

Number of key value pairs in the Key Value Store.


=head2 B<REQUIRED> KvsARN => Str

The Amazon Resource Name (ARN) of the Key Value Store.


=head2 LastModified => Str

Date and time when the key value pairs in the Key Value Store was last
modified.


=head2 Status => Str

The current status of the Key Value Store.


=head2 B<REQUIRED> TotalSizeInBytes => Int

Total size of the Key Value Store in bytes.


=head2 _request_id => Str


=cut

