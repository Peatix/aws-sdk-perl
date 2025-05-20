
package Paws::DataZone::UpdateGlossaryTermOutput;
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

Paws::DataZone::UpdateGlossaryTermOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a business
glossary term is to be updated.


=head2 B<REQUIRED> GlossaryId => Str

The identifier of the business glossary in which a term is to be
updated.


=head2 B<REQUIRED> Id => Str

The identifier of the business glossary term that is to be updated.


=head2 LongDescription => Str

The long description to be updated as part of the C<UpdateGlossaryTerm>
action.


=head2 B<REQUIRED> Name => Str

The name to be updated as part of the C<UpdateGlossaryTerm> action.


=head2 ShortDescription => Str

The short description to be updated as part of the
C<UpdateGlossaryTerm> action.


=head2 B<REQUIRED> Status => Str

The status to be updated as part of the C<UpdateGlossaryTerm> action.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 TermRelations => L<Paws::DataZone::TermRelations>

The term relations to be updated as part of the C<UpdateGlossaryTerm>
action.


=head2 _request_id => Str


=cut

