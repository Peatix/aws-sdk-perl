
package Paws::GameLift::ListGameServerGroupsOutput;
  use Moose;
  has GameServerGroups => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameServerGroup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListGameServerGroupsOutput

=head1 ATTRIBUTES


=head2 GameServerGroups => ArrayRef[L<Paws::GameLift::GameServerGroup>]

The game server groups' game server groups.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

1;