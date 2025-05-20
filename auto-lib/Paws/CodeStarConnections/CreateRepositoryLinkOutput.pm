
package Paws::CodeStarConnections::CreateRepositoryLinkOutput;
  use Moose;
  has RepositoryLinkInfo => (is => 'ro', isa => 'Paws::CodeStarConnections::RepositoryLinkInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateRepositoryLinkOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkInfo => L<Paws::CodeStarConnections::RepositoryLinkInfo>

The returned information about the created repository link.


=head2 _request_id => Str


=cut

1;