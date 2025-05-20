
package Paws::CodeConnections::GetRepositoryLinkOutput;
  use Moose;
  has RepositoryLinkInfo => (is => 'ro', isa => 'Paws::CodeConnections::RepositoryLinkInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetRepositoryLinkOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkInfo => L<Paws::CodeConnections::RepositoryLinkInfo>

The information returned for a specified repository link.


=head2 _request_id => Str


=cut

1;