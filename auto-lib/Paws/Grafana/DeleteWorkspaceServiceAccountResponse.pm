
package Paws::Grafana::DeleteWorkspaceServiceAccountResponse;
  use Moose;
  has ServiceAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccountId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DeleteWorkspaceServiceAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceAccountId => Str

The ID of the service account deleted.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where the service account was deleted.


=head2 _request_id => Str


=cut

