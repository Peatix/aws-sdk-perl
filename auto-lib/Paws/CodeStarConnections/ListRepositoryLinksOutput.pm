
package Paws::CodeStarConnections::ListRepositoryLinksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RepositoryLinks => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::RepositoryLinkInfo]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListRepositoryLinksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the results of
the operation.


=head2 B<REQUIRED> RepositoryLinks => ArrayRef[L<Paws::CodeStarConnections::RepositoryLinkInfo>]

Lists the repository links called by the list repository links
operation.


=head2 _request_id => Str


=cut

1;