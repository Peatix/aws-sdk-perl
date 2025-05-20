
package Paws::S3Tables::GetTableResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has ManagedByService => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedByService');
  has MetadataLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataLocation');
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt', required => 1);
  has ModifiedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedBy', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceId');
  has OwnerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccountId', required => 1);
  has TableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableARN', required => 1);
  has TableBucketId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableBucketId');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has VersionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionToken', required => 1);
  has WarehouseLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'warehouseLocation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the table bucket was created at.


=head2 B<REQUIRED> CreatedBy => Str

The ID of the account that created the table.


=head2 B<REQUIRED> Format => Str

The format of the table.

Valid values are: C<"ICEBERG">
=head2 ManagedByService => Str

The service that manages the table.


=head2 MetadataLocation => Str

The metadata location of the table.


=head2 B<REQUIRED> ModifiedAt => Str

The date and time the table was last modified on.


=head2 B<REQUIRED> ModifiedBy => Str

The ID of the account that last modified the table.


=head2 B<REQUIRED> Name => Str

The name of the table.


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

The namespace associated with the table.


=head2 NamespaceId => Str

The unique identifier of the namespace containing this table.


=head2 B<REQUIRED> OwnerAccountId => Str

The ID of the account that owns the table.


=head2 B<REQUIRED> TableARN => Str

The Amazon Resource Name (ARN) of the table.


=head2 TableBucketId => Str

The unique identifier of the table bucket containing this table.


=head2 B<REQUIRED> Type => Str

The type of the table.

Valid values are: C<"customer">, C<"aws">
=head2 B<REQUIRED> VersionToken => Str

The version token of the table.


=head2 B<REQUIRED> WarehouseLocation => Str

The warehouse location of the table.


=head2 _request_id => Str


=cut

