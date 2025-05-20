
package Paws::DataZone::CreateDomainUnitOutput;
  use Moose;
  has AncestorDomainUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ancestorDomainUnitIds', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Owners => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DomainUnitOwnerProperties]', traits => ['NameInRequest'], request_name => 'owners', required => 1);
  has ParentDomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentDomainUnitId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDomainUnitOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AncestorDomainUnitIds => ArrayRef[Str|Undef]

The IDs of the ancestor domain units.


=head2 CreatedAt => Str

The timestamp at which the domain unit was created.


=head2 CreatedBy => Str

The user who created the domain unit.


=head2 Description => Str

The description of the domain unit.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where the domain unit was created.


=head2 B<REQUIRED> Id => Str

The ID of the domain unit.


=head2 B<REQUIRED> Name => Str

The name of the domain unit.


=head2 B<REQUIRED> Owners => ArrayRef[L<Paws::DataZone::DomainUnitOwnerProperties>]

The owners of the domain unit.


=head2 ParentDomainUnitId => Str

The ID of the parent domain unit.


=head2 _request_id => Str


=cut

