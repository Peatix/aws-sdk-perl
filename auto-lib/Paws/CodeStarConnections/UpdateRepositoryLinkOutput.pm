
package Paws::CodeStarConnections::UpdateRepositoryLinkOutput;
  use Moose;
  has RepositoryLinkInfo => (is => 'ro', isa => 'Paws::CodeStarConnections::RepositoryLinkInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::UpdateRepositoryLinkOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkInfo => L<Paws::CodeStarConnections::RepositoryLinkInfo>

Information about the repository link to be updated.


=head2 _request_id => Str


=cut

1;