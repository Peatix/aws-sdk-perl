
package Paws::Grafana::CreateWorkspaceApiKeyResponse;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'key', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyName', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceApiKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

The key token. Use this value as a bearer token to authenticate HTTP
requests to the workspace.


=head2 B<REQUIRED> KeyName => Str

The name of the key that was created.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that the key is valid for.


=head2 _request_id => Str


=cut

