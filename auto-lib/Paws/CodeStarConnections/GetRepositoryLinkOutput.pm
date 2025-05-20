
package Paws::CodeStarConnections::GetRepositoryLinkOutput;
  use Moose;
  has RepositoryLinkInfo => (is => 'ro', isa => 'Paws::CodeStarConnections::RepositoryLinkInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetRepositoryLinkOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkInfo => L<Paws::CodeStarConnections::RepositoryLinkInfo>

The information returned for a specified repository link.


=head2 _request_id => Str


=cut

1;