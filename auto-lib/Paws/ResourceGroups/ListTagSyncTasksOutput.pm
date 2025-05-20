
package Paws::ResourceGroups::ListTagSyncTasksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TagSyncTasks => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::TagSyncTaskItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListTagSyncTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 TagSyncTasks => ArrayRef[L<Paws::ResourceGroups::TagSyncTaskItem>]

A list of tag-sync tasks and information about each task.


=head2 _request_id => Str


=cut

