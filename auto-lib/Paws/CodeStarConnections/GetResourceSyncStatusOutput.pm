
package Paws::CodeStarConnections::GetResourceSyncStatusOutput;
  use Moose;
  has DesiredState => (is => 'ro', isa => 'Paws::CodeStarConnections::Revision');
  has LatestSuccessfulSync => (is => 'ro', isa => 'Paws::CodeStarConnections::ResourceSyncAttempt');
  has LatestSync => (is => 'ro', isa => 'Paws::CodeStarConnections::ResourceSyncAttempt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetResourceSyncStatusOutput

=head1 ATTRIBUTES


=head2 DesiredState => L<Paws::CodeStarConnections::Revision>

The desired state of the Amazon Web Services resource for the sync
status with the Git repository.


=head2 LatestSuccessfulSync => L<Paws::CodeStarConnections::ResourceSyncAttempt>

The latest successful sync for the sync status with the Git repository.


=head2 B<REQUIRED> LatestSync => L<Paws::CodeStarConnections::ResourceSyncAttempt>

The latest sync for the sync status with the Git repository, whether
successful or not.


=head2 _request_id => Str


=cut

1;