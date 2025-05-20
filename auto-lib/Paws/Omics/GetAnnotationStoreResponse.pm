
package Paws::Omics::GetAnnotationStoreResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NumVersions => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numVersions', required => 1);
  has Reference => (is => 'ro', isa => 'Paws::Omics::ReferenceItem', traits => ['NameInRequest'], request_name => 'reference', required => 1);
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage', required => 1);
  has StoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeArn', required => 1);
  has StoreFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeFormat');
  has StoreOptions => (is => 'ro', isa => 'Paws::Omics::StoreOptions', traits => ['NameInRequest'], request_name => 'storeOptions');
  has StoreSizeBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storeSizeBytes', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetAnnotationStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

When the store was created.


=head2 B<REQUIRED> Description => Str

The store's description.


=head2 B<REQUIRED> Id => Str

The store's ID.


=head2 B<REQUIRED> Name => Str

The store's name.


=head2 B<REQUIRED> NumVersions => Int

An integer indicating how many versions of an annotation store exist.


=head2 B<REQUIRED> Reference => L<Paws::Omics::ReferenceItem>

The store's genome reference.


=head2 B<REQUIRED> SseConfig => L<Paws::Omics::SseConfig>

The store's server-side encryption (SSE) settings.


=head2 B<REQUIRED> Status => Str

The store's status.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 B<REQUIRED> StatusMessage => Str

A status message.


=head2 B<REQUIRED> StoreArn => Str

The store's ARN.


=head2 StoreFormat => Str

The store's annotation file format.

Valid values are: C<"GFF">, C<"TSV">, C<"VCF">
=head2 StoreOptions => L<Paws::Omics::StoreOptions>

The store's parsing options.


=head2 B<REQUIRED> StoreSizeBytes => Int

The store's size in bytes.


=head2 B<REQUIRED> Tags => L<Paws::Omics::TagMap>

The store's tags.


=head2 B<REQUIRED> UpdateTime => Str

When the store was updated.


=head2 _request_id => Str


=cut

