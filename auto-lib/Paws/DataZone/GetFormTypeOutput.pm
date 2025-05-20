
package Paws::DataZone::GetFormTypeOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Imports => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::Import]', traits => ['NameInRequest'], request_name => 'imports');
  has Model => (is => 'ro', isa => 'Paws::DataZone::Model', traits => ['NameInRequest'], request_name => 'model', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OriginDomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originDomainId');
  has OriginProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originProjectId');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId');
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetFormTypeOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when this metadata form type was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created this metadata form type.


=head2 Description => Str

The description of the metadata form type.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this metadata form type
exists.


=head2 Imports => ArrayRef[L<Paws::DataZone::Import>]

The imports of the metadata form type.


=head2 B<REQUIRED> Model => L<Paws::DataZone::Model>

The model of the metadata form type.


=head2 B<REQUIRED> Name => Str

The name of the metadata form type.


=head2 OriginDomainId => Str

The ID of the Amazon DataZone domain in which the metadata form type
was originally created.


=head2 OriginProjectId => Str

The ID of the project in which this metadata form type was originally
created.


=head2 OwningProjectId => Str

The ID of the project that owns this metadata form type.


=head2 B<REQUIRED> Revision => Str

The revision of the metadata form type.


=head2 Status => Str

The status of the metadata form type.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

