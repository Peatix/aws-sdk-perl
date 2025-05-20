
package Paws::DataZone::UpdateGlossaryOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateGlossaryOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description to be updated as part of the C<UpdateGlossary> action.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a business
glossary is to be updated.


=head2 B<REQUIRED> Id => Str

The identifier of the business glossary that is to be updated.


=head2 B<REQUIRED> Name => Str

The name to be updated as part of the C<UpdateGlossary> action.


=head2 B<REQUIRED> OwningProjectId => Str

The identifier of the project in which to update a business glossary.


=head2 Status => Str

The status to be updated as part of the C<UpdateGlossary> action.

Valid values are: C<"DISABLED">, C<"ENABLED">
=head2 _request_id => Str


=cut

