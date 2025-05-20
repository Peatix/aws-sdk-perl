
package Paws::Omics::CreateAnnotationStoreResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Reference => (is => 'ro', isa => 'Paws::Omics::ReferenceItem', traits => ['NameInRequest'], request_name => 'reference');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoreFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeFormat');
  has StoreOptions => (is => 'ro', isa => 'Paws::Omics::StoreOptions', traits => ['NameInRequest'], request_name => 'storeOptions');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateAnnotationStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

When the store was created.


=head2 B<REQUIRED> Id => Str

The store's ID.


=head2 B<REQUIRED> Name => Str

The store's name.


=head2 Reference => L<Paws::Omics::ReferenceItem>

The store's genome reference. Required for all stores except TSV format
with generic annotations.


=head2 B<REQUIRED> Status => Str

The store's status.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 StoreFormat => Str

The annotation file format of the store.

Valid values are: C<"GFF">, C<"TSV">, C<"VCF">
=head2 StoreOptions => L<Paws::Omics::StoreOptions>

The store's file parsing options.


=head2 B<REQUIRED> VersionName => Str

The name given to an annotation store version to distinguish it from
other versions.


=head2 _request_id => Str


=cut

