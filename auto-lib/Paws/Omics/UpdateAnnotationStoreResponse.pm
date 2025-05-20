
package Paws::Omics::UpdateAnnotationStoreResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Reference => (is => 'ro', isa => 'Paws::Omics::ReferenceItem', traits => ['NameInRequest'], request_name => 'reference', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoreFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeFormat');
  has StoreOptions => (is => 'ro', isa => 'Paws::Omics::StoreOptions', traits => ['NameInRequest'], request_name => 'storeOptions');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateAnnotationStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

When the store was created.


=head2 B<REQUIRED> Description => Str

The store's description.


=head2 B<REQUIRED> Id => Str

The store's ID.


=head2 B<REQUIRED> Name => Str

The store's name.


=head2 B<REQUIRED> Reference => L<Paws::Omics::ReferenceItem>

The store's genome reference.


=head2 B<REQUIRED> Status => Str

The store's status.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 StoreFormat => Str

The annotation file format of the store.

Valid values are: C<"GFF">, C<"TSV">, C<"VCF">
=head2 StoreOptions => L<Paws::Omics::StoreOptions>

Parsing options for the store.


=head2 B<REQUIRED> UpdateTime => Str

When the store was updated.


=head2 _request_id => Str


=cut

