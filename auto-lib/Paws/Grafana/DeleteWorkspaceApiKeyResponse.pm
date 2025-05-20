
package Paws::Grafana::DeleteWorkspaceApiKeyResponse;
  use Moose;
  has KeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyName', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DeleteWorkspaceApiKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyName => Str

The name of the key that was deleted.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where the key was deleted.


=head2 _request_id => Str


=cut

