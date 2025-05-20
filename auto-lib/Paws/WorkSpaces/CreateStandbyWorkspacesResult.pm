
package Paws::WorkSpaces::CreateStandbyWorkspacesResult;
  use Moose;
  has FailedStandbyRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::FailedCreateStandbyWorkspacesRequest]');
  has PendingStandbyRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::PendingCreateStandbyWorkspacesRequest]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateStandbyWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedStandbyRequests => ArrayRef[L<Paws::WorkSpaces::FailedCreateStandbyWorkspacesRequest>]

Information about the standby WorkSpace that could not be created.


=head2 PendingStandbyRequests => ArrayRef[L<Paws::WorkSpaces::PendingCreateStandbyWorkspacesRequest>]

Information about the standby WorkSpace that was created.


=head2 _request_id => Str


=cut

1;