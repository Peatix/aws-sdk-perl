
package Paws::DataZone::CreateGlossaryOutput;
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

Paws::DataZone::CreateGlossaryOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description of this business glossary.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this business glossary is
created.


=head2 B<REQUIRED> Id => Str

The ID of this business glossary.


=head2 B<REQUIRED> Name => Str

The name of this business glossary.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the project that currently owns this business glossary.


=head2 Status => Str

The status of this business glossary.

Valid values are: C<"DISABLED">, C<"ENABLED">
=head2 _request_id => Str


=cut

