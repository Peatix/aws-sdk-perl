
package Paws::DataZone::StartMetadataGenerationRunOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::StartMetadataGenerationRunOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp at which the metadata generation run was started.


=head2 CreatedBy => Str

The ID of the user who started the metadata generation run.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the metadata generation
run was started.


=head2 B<REQUIRED> Id => Str

The ID of the metadata generation run.


=head2 OwningProjectId => Str

The ID of the project that owns the asset for which the metadata
generation run was started.


=head2 Status => Str

The status of the metadata generation run.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELED">, C<"SUCCEEDED">, C<"FAILED">
=head2 Type => Str

The type of the metadata generation run.

Valid values are: C<"BUSINESS_DESCRIPTIONS">
=head2 _request_id => Str


=cut

