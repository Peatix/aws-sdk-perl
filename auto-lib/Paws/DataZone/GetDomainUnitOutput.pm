
package Paws::DataZone::GetDomainUnitOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has LastUpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedBy');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Owners => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DomainUnitOwnerProperties]', traits => ['NameInRequest'], request_name => 'owners', required => 1);
  has ParentDomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentDomainUnitId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDomainUnitOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time stamp at which the domain unit was created.


=head2 CreatedBy => Str

The user who created the domain unit.


=head2 Description => Str

The description of the domain unit.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain in which the domain unit lives.


=head2 B<REQUIRED> Id => Str

The ID of the domain unit.


=head2 LastUpdatedAt => Str

The timestamp at which the domain unit was last updated.


=head2 LastUpdatedBy => Str

The user who last updated the domain unit.


=head2 B<REQUIRED> Name => Str

The name of the domain unit.


=head2 B<REQUIRED> Owners => ArrayRef[L<Paws::DataZone::DomainUnitOwnerProperties>]

The owners of the domain unit.


=head2 ParentDomainUnitId => Str

The ID of the parent domain unit.


=head2 _request_id => Str


=cut

