
package Paws::DataZone::GetAssetTypeOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has FormsOutput => (is => 'ro', isa => 'Paws::DataZone::FormsOutputMap', traits => ['NameInRequest'], request_name => 'formsOutput', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OriginDomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originDomainId');
  has OriginProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originProjectId');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetAssetTypeOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the asset type was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created the asset type.


=head2 Description => Str

The description of the asset type.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the asset type exists.


=head2 B<REQUIRED> FormsOutput => L<Paws::DataZone::FormsOutputMap>

The metadata forms attached to the asset type.


=head2 B<REQUIRED> Name => Str

The name of the asset type.


=head2 OriginDomainId => Str

The ID of the Amazon DataZone domain in which the asset type was
originally created.


=head2 OriginProjectId => Str

The ID of the Amazon DataZone project in which the asset type was
originally created.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the Amazon DataZone project that owns the asset type.


=head2 B<REQUIRED> Revision => Str

The revision of the asset type.


=head2 UpdatedAt => Str

The timestamp of when the asset type was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user that updated the asset type.


=head2 _request_id => Str


=cut

