
package Paws::IoTTwinMaker::GetSyncJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::SyncJobStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SyncRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncRole', required => 1);
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSource', required => 1);
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetSyncJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The sync job ARN.


=head2 B<REQUIRED> CreationDateTime => Str

The creation date and time.


=head2 B<REQUIRED> Status => L<Paws::IoTTwinMaker::SyncJobStatus>

The SyncJob response status.


=head2 B<REQUIRED> SyncRole => Str

The sync IAM role.


=head2 B<REQUIRED> SyncSource => Str

The sync soucre.

Currently the only supported syncSource is C<SITEWISE >.


=head2 B<REQUIRED> UpdateDateTime => Str

The update date and time.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the sync job.


=head2 _request_id => Str


=cut

