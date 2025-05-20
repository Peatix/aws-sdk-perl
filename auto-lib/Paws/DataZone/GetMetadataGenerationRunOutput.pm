
package Paws::DataZone::GetMetadataGenerationRunOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Target => (is => 'ro', isa => 'Paws::DataZone::MetadataGenerationRunTarget', traits => ['NameInRequest'], request_name => 'target');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetMetadataGenerationRunOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the metadata generation run was start.


=head2 CreatedBy => Str

The Amazon DataZone user who started the metadata generation run.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain the metadata generation run of
which you want to get.


=head2 B<REQUIRED> Id => Str

The ID of the metadata generation run.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the project that owns the assets for which you're running
metadata generation.


=head2 Status => Str

The status of the metadata generation run.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELED">, C<"SUCCEEDED">, C<"FAILED">
=head2 Target => L<Paws::DataZone::MetadataGenerationRunTarget>

The asset for which you're generating metadata.


=head2 Type => Str

The type of metadata generation run.

Valid values are: C<"BUSINESS_DESCRIPTIONS">
=head2 _request_id => Str


=cut

