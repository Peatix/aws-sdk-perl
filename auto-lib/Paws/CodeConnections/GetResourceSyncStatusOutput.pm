
package Paws::CodeConnections::GetResourceSyncStatusOutput;
  use Moose;
  has DesiredState => (is => 'ro', isa => 'Paws::CodeConnections::Revision');
  has LatestSuccessfulSync => (is => 'ro', isa => 'Paws::CodeConnections::ResourceSyncAttempt');
  has LatestSync => (is => 'ro', isa => 'Paws::CodeConnections::ResourceSyncAttempt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetResourceSyncStatusOutput

=head1 ATTRIBUTES


=head2 DesiredState => L<Paws::CodeConnections::Revision>

The desired state of the Amazon Web Services resource for the sync
status with the Git repository.


=head2 LatestSuccessfulSync => L<Paws::CodeConnections::ResourceSyncAttempt>

The latest successful sync for the sync status with the Git repository.


=head2 B<REQUIRED> LatestSync => L<Paws::CodeConnections::ResourceSyncAttempt>

The latest sync for the sync status with the Git repository, whether
successful or not.


=head2 _request_id => Str


=cut

1;