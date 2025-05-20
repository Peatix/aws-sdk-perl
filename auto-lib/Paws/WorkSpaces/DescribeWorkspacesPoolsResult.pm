
package Paws::WorkSpaces::DescribeWorkspacesPoolsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkspacesPools => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspacesPool]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesPoolsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.


=head2 WorkspacesPools => ArrayRef[L<Paws::WorkSpaces::WorkspacesPool>]

Information about the WorkSpaces Pools.


=head2 _request_id => Str


=cut

1;