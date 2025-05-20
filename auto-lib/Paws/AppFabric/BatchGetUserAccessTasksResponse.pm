
package Paws::AppFabric::BatchGetUserAccessTasksResponse;
  use Moose;
  has UserAccessResultsList => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::UserAccessResultItem]', traits => ['NameInRequest'], request_name => 'userAccessResultsList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::BatchGetUserAccessTasksResponse

=head1 ATTRIBUTES


=head2 UserAccessResultsList => ArrayRef[L<Paws::AppFabric::UserAccessResultItem>]

Contains a list of user access results.


=head2 _request_id => Str


=cut

