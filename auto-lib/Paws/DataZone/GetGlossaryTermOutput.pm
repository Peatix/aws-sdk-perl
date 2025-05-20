
package Paws::DataZone::GetGlossaryTermOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has GlossaryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'glossaryId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LongDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'longDescription');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ShortDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortDescription');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TermRelations => (is => 'ro', isa => 'Paws::DataZone::TermRelations', traits => ['NameInRequest'], request_name => 'termRelations');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetGlossaryTermOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the business glossary term was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created the business glossary.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this business glossary
term exists.


=head2 B<REQUIRED> GlossaryId => Str

The ID of the business glossary to which this term belongs.


=head2 B<REQUIRED> Id => Str

The ID of the business glossary term.


=head2 LongDescription => Str

The long description of the business glossary term.


=head2 B<REQUIRED> Name => Str

The name of the business glossary term.


=head2 ShortDescription => Str

The short decription of the business glossary term.


=head2 B<REQUIRED> Status => Str

The status of the business glossary term.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 TermRelations => L<Paws::DataZone::TermRelations>

The relations of the business glossary term.


=head2 UpdatedAt => Str

The timestamp of when the business glossary term was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the business glossary term.


=head2 _request_id => Str


=cut

