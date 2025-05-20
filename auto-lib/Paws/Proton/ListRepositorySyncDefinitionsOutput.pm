
package Paws::Proton::ListRepositorySyncDefinitionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SyncDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Proton::RepositorySyncDefinition]', traits => ['NameInRequest'], request_name => 'syncDefinitions' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListRepositorySyncDefinitionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next repository sync
definition in the array of repository sync definitions, after the
current requested list of repository sync definitions.


=head2 B<REQUIRED> SyncDefinitions => ArrayRef[L<Paws::Proton::RepositorySyncDefinition>]

An array of repository sync definitions.


=head2 _request_id => Str


=cut

1;