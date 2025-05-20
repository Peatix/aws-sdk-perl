
package Paws::S3Tables::GetTableBucketResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwnerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccountId', required => 1);
  has TableBucketId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableBucketId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableBucketResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the table bucket.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the table bucket was created.


=head2 B<REQUIRED> Name => Str

The name of the table bucket


=head2 B<REQUIRED> OwnerAccountId => Str

The ID of the account that owns the table bucket.


=head2 TableBucketId => Str

The unique identifier of the table bucket.


=head2 _request_id => Str


=cut

