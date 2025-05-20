
package Paws::DataZone::CreateAssetTypeOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has FormsOutput => (is => 'ro', isa => 'Paws::DataZone::FormsOutputMap', traits => ['NameInRequest'], request_name => 'formsOutput', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OriginDomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originDomainId');
  has OriginProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originProjectId');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId');
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAssetTypeOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the asset type is to be created.


=head2 CreatedBy => Str

The Amazon DataZone user who creates this custom asset type.


=head2 Description => Str

The description of the custom asset type.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the asset type was
created.


=head2 B<REQUIRED> FormsOutput => L<Paws::DataZone::FormsOutputMap>

The metadata forms that are attached to the asset type.


=head2 B<REQUIRED> Name => Str

The name of the asset type.


=head2 OriginDomainId => Str

The ID of the Amazon DataZone domain where the asset type was
originally created.


=head2 OriginProjectId => Str

The ID of the Amazon DataZone project where the asset type was
originally created.


=head2 OwningProjectId => Str

The ID of the Amazon DataZone project that currently owns this asset
type.


=head2 B<REQUIRED> Revision => Str

The revision of the custom asset type.


=head2 UpdatedAt => Str

The timestamp of when the custom type was created.


=head2 UpdatedBy => Str

The Amazon DataZone user that created the custom asset type.


=head2 _request_id => Str


=cut

