
package Paws::AppFabric::StartUserAccessTasksResponse;
  use Moose;
  has UserAccessTasksList => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::UserAccessTaskItem]', traits => ['NameInRequest'], request_name => 'userAccessTasksList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::StartUserAccessTasksResponse

=head1 ATTRIBUTES


=head2 UserAccessTasksList => ArrayRef[L<Paws::AppFabric::UserAccessTaskItem>]

Contains a list of user access task information.


=head2 _request_id => Str


=cut

