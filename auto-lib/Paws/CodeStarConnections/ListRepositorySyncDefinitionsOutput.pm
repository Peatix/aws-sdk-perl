
package Paws::CodeStarConnections::ListRepositorySyncDefinitionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RepositorySyncDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::RepositorySyncDefinition]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListRepositorySyncDefinitionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.


=head2 B<REQUIRED> RepositorySyncDefinitions => ArrayRef[L<Paws::CodeStarConnections::RepositorySyncDefinition>]

The list of repository sync definitions returned by the request. A
C<RepositorySyncDefinition> is a mapping from a repository branch to
all the Amazon Web Services resources that are being synced from that
branch.


=head2 _request_id => Str


=cut

1;