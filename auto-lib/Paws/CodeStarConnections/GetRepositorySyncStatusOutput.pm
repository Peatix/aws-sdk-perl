
package Paws::CodeStarConnections::GetRepositorySyncStatusOutput;
  use Moose;
  has LatestSync => (is => 'ro', isa => 'Paws::CodeStarConnections::RepositorySyncAttempt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetRepositorySyncStatusOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LatestSync => L<Paws::CodeStarConnections::RepositorySyncAttempt>

The status of the latest sync returned for a specified repository and
branch.


=head2 _request_id => Str


=cut

1;