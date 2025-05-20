
package Paws::WorkSpaces::DescribeWorkspacesPoolSessionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspacesPoolSession]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesPoolSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.


=head2 Sessions => ArrayRef[L<Paws::WorkSpaces::WorkspacesPoolSession>]

Describes the pool sessions.


=head2 _request_id => Str


=cut

1;