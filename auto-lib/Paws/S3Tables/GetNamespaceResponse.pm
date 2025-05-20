
package Paws::S3Tables::GetNamespaceResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceId');
  has OwnerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccountId', required => 1);
  has TableBucketId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableBucketId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the namespace was created at.


=head2 B<REQUIRED> CreatedBy => Str

The ID of the account that created the namespace.


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

The name of the namespace.


=head2 NamespaceId => Str

The unique identifier of the namespace.


=head2 B<REQUIRED> OwnerAccountId => Str

The ID of the account that owns the namespcace.


=head2 TableBucketId => Str

The unique identifier of the table bucket containing this namespace.


=head2 _request_id => Str


=cut

