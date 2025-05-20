
package Paws::CodeStarConnections::UpdateSyncBlockerOutput;
  use Moose;
  has ParentResourceName => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has SyncBlocker => (is => 'ro', isa => 'Paws::CodeStarConnections::SyncBlocker', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::UpdateSyncBlockerOutput

=head1 ATTRIBUTES


=head2 ParentResourceName => Str

The parent resource name for the sync blocker.


=head2 B<REQUIRED> ResourceName => Str

The resource name for the sync blocker.


=head2 B<REQUIRED> SyncBlocker => L<Paws::CodeStarConnections::SyncBlocker>

Information about the sync blocker to be updated.


=head2 _request_id => Str


=cut

1;