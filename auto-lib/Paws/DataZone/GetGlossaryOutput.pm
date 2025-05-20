
package Paws::DataZone::GetGlossaryOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetGlossaryOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when this business glossary was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created this business glossary.


=head2 Description => Str

The description of the business glossary.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this business glossary
exists.


=head2 B<REQUIRED> Id => Str

The ID of the business glossary.


=head2 B<REQUIRED> Name => Str

The name of the business glossary.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the project that owns this business glossary.


=head2 B<REQUIRED> Status => Str

The status of the business glossary.

Valid values are: C<"DISABLED">, C<"ENABLED">
=head2 UpdatedAt => Str

The timestamp of when the business glossary was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the business glossary.


=head2 _request_id => Str


=cut

