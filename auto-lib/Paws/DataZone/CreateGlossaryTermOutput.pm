
package Paws::DataZone::CreateGlossaryTermOutput;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has GlossaryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'glossaryId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LongDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'longDescription');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ShortDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortDescription');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TermRelations => (is => 'ro', isa => 'Paws::DataZone::TermRelations', traits => ['NameInRequest'], request_name => 'termRelations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateGlossaryTermOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this business glossary
term is created.


=head2 B<REQUIRED> GlossaryId => Str

The ID of the business glossary in which this term is created.


=head2 B<REQUIRED> Id => Str

The ID of this business glossary term.


=head2 LongDescription => Str

The long description of this business glossary term.


=head2 B<REQUIRED> Name => Str

The name of this business glossary term.


=head2 ShortDescription => Str

The short description of this business glossary term.


=head2 B<REQUIRED> Status => Str

The status of this business glossary term.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 TermRelations => L<Paws::DataZone::TermRelations>

The term relations of this business glossary term.


=head2 _request_id => Str


=cut

